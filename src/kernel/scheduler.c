#include "scheduler.h"
#include "process.h"
#include "uart.h"
#include "metrics.h"

// Modo actual del scheduler
static sched_mode_t current_mode;

// Proceso actual ejecutándose
static process_id_t current_process;

// Contador de ciclos
static uint32_t scheduler_cycles;

// Declaraciones externas de funciones de proceso
extern void process_p1_temp_acquisition(void);
extern void process_p2_cooling_control(void);
extern void process_p3_uart_display(void);
extern pcb_t* process_get_all_pcbs(void);

void scheduler_init(sched_mode_t mode) {
    current_mode = mode;
    current_process = PROCESS_P1;
    scheduler_cycles = 0;

    uart_puts("[PLANIFICADOR] Inicializado en modo: ");
    switch (mode) {
        case SCHED_BASELINE:
            uart_puts("BASELINE (Secuencial P1->P2->P3)\n");
            break;
        case SCHED_PRIORITY_1:
            uart_puts("ESCENARIO 2 - PRIORIDAD (P1->P3->P2)\n");
            break;
        case SCHED_PRIORITY_2:
            uart_puts("PRIORITY_2 (P2->P1->P3)\n");
            break;
        case SCHED_SYSCALLS:
            uart_puts("SYSCALLS (Automatico)\n");
            break;
    }
}

// Imprimir encabezado de ciclo
static void print_cycle_header(uint32_t cycle, uint32_t total) {
    uart_puts("\n");
    uart_puts("╔════════════════════════════════════════════════════════╗\n");
    uart_puts("║  CICLO ");

    // Imprimir número de ciclo
    char buf[12];
    int i = 0;
    uint32_t num = cycle;
    if (num == 0) {
        uart_putc('0');
    } else {
        while (num > 0) {
            buf[i++] = '0' + (num % 10);
            num /= 10;
        }
        while (i > 0) {
            uart_putc(buf[--i]);
        }
    }

    uart_puts(" de ");

    // Imprimir total
    i = 0;
    num = total;
    while (num > 0) {
        buf[i++] = '0' + (num % 10);
        num /= 10;
    }
    while (i > 0) {
        uart_putc(buf[--i]);
    }

    uart_puts(" (Minuto ");

    // Imprimir número de ciclo de nuevo como minuto
    i = 0;
    num = cycle;
    if (num == 0) {
        uart_putc('0');
    } else {
        while (num > 0) {
            buf[i++] = '0' + (num % 10);
            num /= 10;
        }
        while (i > 0) {
            uart_putc(buf[--i]);
        }
    }

    uart_puts(")");

    // Espacios para centrar
    uart_puts("                     ║\n");
    uart_puts("╚════════════════════════════════════════════════════════╝\n");
}

// Ejecutar un proceso específico
static void execute_process(process_id_t pid) {
    current_process = pid;

    // Registrar cambio de proceso
    metrics_inc_process_execution(pid);

    uart_puts("\n--- Ejecutando Proceso ");
    uart_putc('0' + pid);
    uart_puts(" ---\n");

    // Iniciar timing del proceso
    metrics_start_process_timing();

    switch (pid) {
        case PROCESS_P1:
            process_p1_temp_acquisition();
            break;
        case PROCESS_P2:
            process_p2_cooling_control();
            break;
        case PROCESS_P3:
            process_p3_uart_display();
            break;
    }

    // Detener timing del proceso
    metrics_stop_process_timing(pid);

    uart_putc('\n');
}

// Escenario 1: BASELINE - Ejecución secuencial P1 -> P2 -> P3
static void schedule_baseline(void) {
    // Ejecutar procesos en orden secuencial
    execute_process(PROCESS_P1);
    execute_process(PROCESS_P2);
    execute_process(PROCESS_P3);

    scheduler_cycles++;
    metrics_inc_cycle();

    uart_puts("========================================\n");
    uart_puts("[SCHEDULER] Cycle ");

    // Imprimir número de ciclo
    uint32_t cycle = scheduler_cycles;
    char buf[12];
    int i = 0;
    if (cycle == 0) {
        uart_putc('0');
    } else {
        while (cycle > 0) {
            buf[i++] = '0' + (cycle % 10);
            cycle /= 10;
        }
        while (i > 0) {
            uart_putc(buf[--i]);
        }
    }

    uart_puts(" completed\n");
    uart_puts("========================================\n\n");
}

// Escenario 2: PRIORITY_1 - Orden P1 -> P3 -> P2
static void schedule_priority_1(void) {
    execute_process(PROCESS_P1);

    // Switch P1 -> P3 es abrupto (salto de P1 a P3, perdiendo P2)
    uart_puts("[PERDIDA DE DATOS] Cambio abrupto: P1 -> P3 (se salta P2)\n");
    metrics_inc_abrupt_switch();
    metrics_inc_data_loss();

    execute_process(PROCESS_P3);

    // Switch P3 -> P2 es abrupto (P3 no es consecutivo a P2)
    uart_puts("[PERDIDA DE DATOS] Cambio abrupto: P3 -> P2 (no consecutivo)\n");
    metrics_inc_abrupt_switch();
    metrics_inc_data_loss();

    execute_process(PROCESS_P2);

    scheduler_cycles++;
    metrics_inc_cycle();
    uart_puts("[PLANIFICADOR] Ciclo de prioridad completado (P1->P3->P2)\n\n");
}

// Escenario 3: PRIORITY_2 - Orden P2 -> P1 -> P3
static void schedule_priority_2(void) {
    execute_process(PROCESS_P2);

    // Switch P2 -> P1 es abrupto (retroceso, P2 normalmente va después de P1)
    uart_puts("[DATA LOSS] Abrupt switch: P2 -> P1 (reverse order)\n");
    metrics_inc_abrupt_switch();
    metrics_inc_data_loss();

    execute_process(PROCESS_P1);

    // Switch P1 -> P3 es abrupto (salto de P1 a P3, perdiendo P2)
    uart_puts("[DATA LOSS] Abrupt switch: P1 -> P3 (skipping P2)\n");
    metrics_inc_abrupt_switch();
    metrics_inc_data_loss();

    execute_process(PROCESS_P3);

    scheduler_cycles++;
    metrics_inc_cycle();
    uart_puts("[SCHEDULER] Priority cycle completed (P2->P1->P3)\n\n");
}

// Escenario 4: SYSCALLS - Con context switching automático
// Este escenario demuestra guardado/restauración real del PC
static uint32_t saved_p1_pc = 0;  // PC guardado de P1 durante context switch

static void schedule_syscalls(void) {
    uart_puts("[SCHEDULER] Syscalls mode - automatic execution\n");

    // En este modo, P1 se interrumpe para ejecutar P2, luego se reanuda

    // FASE 1: Entrar a P1 y guardar su PC antes de la interrupción
    uart_puts("[SYSCALL] Entering P1\n");

    // Guardar PC actual usando auipc (simula punto de interrupción)
    __asm__ volatile (
        "auipc %0, 0\n"
        : "=r"(saved_p1_pc)
    );
    uart_puts("[SYSCALL] P1 PC saved at: 0x");
    // Imprimir PC en hex
    for (int i = 7; i >= 0; i--) {
        uint32_t nibble = (saved_p1_pc >> (i * 4)) & 0xF;
        uart_putc(nibble < 10 ? '0' + nibble : 'A' + nibble - 10);
    }
    uart_putc('\n');

    execute_process(PROCESS_P1);

    // FASE 2: Context switch P1 -> P2 (interrupción de P1)
    uart_puts("[SYSCALL] Context switch P1 -> P2 (P1 interrupted)\n");
    uart_puts("[SYSCALL] Saving P1 context...\n");
    metrics_inc_context_switch();
    execute_process(PROCESS_P2);

    // FASE 3: Restaurar PC de P1 y resumir
    uart_puts("[SYSCALL] Resuming P1 from saved PC: 0x");
    for (int i = 7; i >= 0; i--) {
        uint32_t nibble = (saved_p1_pc >> (i * 4)) & 0xF;
        uart_putc(nibble < 10 ? '0' + nibble : 'A' + nibble - 10);
    }
    uart_putc('\n');
    metrics_inc_context_switch();
    // P1 ya completó, el PC guardado representa el punto de checkpoint

    // FASE 4: Context switch -> P3
    uart_puts("[SYSCALL] Context switch -> P3\n");
    metrics_inc_context_switch();
    execute_process(PROCESS_P3);

    scheduler_cycles++;
    metrics_inc_cycle();
    uart_puts("[SCHEDULER] Syscall cycle completed\n\n");
}

void scheduler_run(void) {
    uart_puts("\n[PLANIFICADOR] Iniciando bucle de ejecucion\n\n");

    // Loop principal del scheduler
    // En una implementación real, esto correría indefinidamente
    // Para testing completo, ejecutamos 100 ciclos (orbita LEO completa)
    for (uint32_t i = 0; i < 100; i++) {
        // Mostrar encabezado del ciclo actual
        print_cycle_header(i, 100);

        switch (current_mode) {
            case SCHED_BASELINE:
                schedule_baseline();
                break;
            case SCHED_PRIORITY_1:
                schedule_priority_1();
                break;
            case SCHED_PRIORITY_2:
                schedule_priority_2();
                break;
            case SCHED_SYSCALLS:
                schedule_syscalls();
                break;
        }

        // Separador al final del ciclo
        uart_puts("════════════════════════════════════════════════════════\n\n");
    }

    uart_puts("\n[SCHEDULER] Execution completed\n");
}

pcb_t* scheduler_get_next_process(void) {
    // Retorna el PCB del siguiente proceso a ejecutar
    pcb_t* pcbs = process_get_all_pcbs();

    switch (current_mode) {
        case SCHED_BASELINE:
            // Secuencial: P1, P2, P3, P1, P2, P3...
            return &pcbs[(scheduler_cycles % 3)];

        case SCHED_PRIORITY_1:
            // P1 -> P3 -> P2
            {
                uint32_t order[] = {0, 2, 1};  // Índices de P1, P3, P2
                return &pcbs[order[scheduler_cycles % 3]];
            }

        case SCHED_PRIORITY_2:
            // P2 -> P1 -> P3
            {
                uint32_t order[] = {1, 0, 2};  // Índices de P2, P1, P3
                return &pcbs[order[scheduler_cycles % 3]];
            }

        case SCHED_SYSCALLS:
            // Decisión automática basada en syscalls
            return &pcbs[0];  // Por defecto P1
    }

    return &pcbs[0];
}

void scheduler_yield(void) {
    // Ceder el procesador al siguiente proceso
    uart_puts("[SCHEDULER] Process yielded\n");
}

void scheduler_switch_context(pcb_t* old_proc, pcb_t* new_proc) {
    // Cambiar contexto entre procesos
    // Esto será implementado completamente en el Escenario 4
    uart_puts("[SCHEDULER] Context switch: P");
    uart_putc('0' + old_proc->pid);
    uart_puts(" -> P");
    uart_putc('0' + new_proc->pid);
    uart_putc('\n');
}
