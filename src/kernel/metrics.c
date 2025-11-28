#include "metrics.h"
#include "uart.h"

// Variable global para métricas
static metrics_t system_metrics;

void metrics_init(void) {
    // Inicializar todas las métricas a 0
    system_metrics.total_cycles = 0;
    system_metrics.context_switches = 0;
    system_metrics.process_switches = 0;
    system_metrics.p1_executions = 0;
    system_metrics.p2_executions = 0;
    system_metrics.p3_executions = 0;
    system_metrics.p1_total_cycles = 0;
    system_metrics.p2_total_cycles = 0;
    system_metrics.p3_total_cycles = 0;
    system_metrics.current_process_start = 0;
    system_metrics.temp_readings = 0;
    system_metrics.temp_transmissions = 0;
    system_metrics.temp_anomalies = 0;
    system_metrics.cooling_activations = 0;
    system_metrics.cooling_deactivations = 0;
    system_metrics.cooling_total_time = 0;
    system_metrics.stack_p1_usage = 0;
    system_metrics.stack_p2_usage = 0;
    system_metrics.stack_p3_usage = 0;
    system_metrics.uart_bytes_sent = 0;
    system_metrics.uart_messages_sent = 0;
    system_metrics.data_loss_events = 0;
    system_metrics.abrupt_switches = 0;

    uart_puts("[METRICS] Performance tracking initialized\n");
}

// Helper para imprimir números
static void print_metric_value(uint32_t value) {
    char buf[12] = {0};
    int i = 0;

    if (value == 0) {
        uart_putc('0');
        return;
    }

    while (value > 0 && i < 11) {
        buf[i++] = '0' + (value % 10);
        value /= 10;
    }

    while (i > 0) {
        uart_putc(buf[--i]);
    }
}

// Helper para imprimir números de 64 bits
static void print_metric_value_64(uint64_t value) {
    char buf[24] = {0};
    int i = 0;

    if (value == 0) {
        uart_putc('0');
        return;
    }

    while (value > 0 && i < 23) {
        buf[i++] = '0' + (value % 10);
        value /= 10;
    }

    while (i > 0) {
        uart_putc(buf[--i]);
    }
}

// Helper para imprimir porcentajes (value * 100 / total)
static void print_percentage(uint32_t value, uint32_t total) {
    if (total == 0) {
        uart_puts("N/A");
        return;
    }

    uint32_t percentage = (value * 100) / total;
    print_metric_value(percentage);
    uart_putc('%');
}

void metrics_print_summary(void) {
    uart_puts("\n");
    uart_puts("╔════════════════════════════════════════════════════════╗\n");
    uart_puts("║         RESUMEN DE METRICAS DE RENDIMIENTO            ║\n");
    uart_puts("╚════════════════════════════════════════════════════════╝\n");
    uart_puts("\n");

    uart_puts("METRICAS DEL PLANIFICADOR:\n");
    uart_puts("  Minutos orbitales:    ");
    print_metric_value(system_metrics.total_cycles);
    uart_puts(" min (1 orbita LEO)\n");

    uart_puts("  Cambios de contexto:  ");
    print_metric_value(system_metrics.context_switches);
    uart_puts("\n");

    uart_puts("  Cambios de proceso:   ");
    print_metric_value(system_metrics.process_switches);
    uart_puts("\n\n");

    uart_puts("EJECUCIONES DE PROCESOS:\n");
    uart_puts("  P1 (Adquisicion):     ");
    print_metric_value(system_metrics.p1_executions);
    uart_puts(" (");
    print_percentage(system_metrics.p1_executions, system_metrics.process_switches);
    uart_puts(")\n");

    uart_puts("  P2 (Enfriamiento):    ");
    print_metric_value(system_metrics.p2_executions);
    uart_puts(" (");
    print_percentage(system_metrics.p2_executions, system_metrics.process_switches);
    uart_puts(")\n");

    uart_puts("  P3 (Telemetria):      ");
    print_metric_value(system_metrics.p3_executions);
    uart_puts(" (");
    print_percentage(system_metrics.p3_executions, system_metrics.process_switches);
    uart_puts(")\n\n");

    uart_puts("TIEMPOS DE EJECUCION (ciclos CPU):\n");
    uart_puts("  P1 promedio:          ");
    print_metric_value_64(metrics_get_process_avg_cycles(1));
    uart_puts(" ciclos\n");

    uart_puts("  P2 promedio:          ");
    print_metric_value_64(metrics_get_process_avg_cycles(2));
    uart_puts(" ciclos\n");

    uart_puts("  P3 promedio:          ");
    print_metric_value_64(metrics_get_process_avg_cycles(3));
    uart_puts(" ciclos\n");

    uart_puts("  Total P1:             ");
    print_metric_value_64(system_metrics.p1_total_cycles);
    uart_puts(" ciclos\n");

    uart_puts("  Total P2:             ");
    print_metric_value_64(system_metrics.p2_total_cycles);
    uart_puts(" ciclos\n");

    uart_puts("  Total P3:             ");
    print_metric_value_64(system_metrics.p3_total_cycles);
    uart_puts(" ciclos\n\n");

    uart_puts("METRICAS DE TEMPERATURA:\n");
    uart_puts("  Lecturas:             ");
    print_metric_value(system_metrics.temp_readings);
    uart_puts("\n");

    uart_puts("  Transmisiones:        ");
    print_metric_value(system_metrics.temp_transmissions);
    uart_puts("\n");

    uart_puts("  Anomalias (>90C):     ");
    print_metric_value(system_metrics.temp_anomalies);
    uart_puts("\n\n");

    uart_puts("SISTEMA DE ENFRIAMIENTO:\n");
    uart_puts("  Activaciones:         ");
    print_metric_value(system_metrics.cooling_activations);
    uart_puts("\n");

    uart_puts("  Desactivaciones:      ");
    print_metric_value(system_metrics.cooling_deactivations);
    uart_puts("\n");

    uart_puts("  Tiempo total activo:  ");
    print_metric_value(system_metrics.cooling_total_time);
    uart_puts(" min\n\n");

    uart_puts("METRICAS UART:\n");
    uart_puts("  Bytes enviados:       ");
    print_metric_value(system_metrics.uart_bytes_sent);
    uart_puts("\n");

    uart_puts("  Mensajes enviados:    ");
    print_metric_value(system_metrics.uart_messages_sent);
    uart_puts("\n\n");

    if (system_metrics.data_loss_events > 0 || system_metrics.abrupt_switches > 0) {
        uart_puts("DETECCION DE PERDIDA DE DATOS:\n");
        uart_puts("  Cambios abruptos:     ");
        print_metric_value(system_metrics.abrupt_switches);
        uart_puts("\n");

        uart_puts("  Eventos de perdida:   ");
        print_metric_value(system_metrics.data_loss_events);
        uart_puts("\n\n");
    }

    uart_puts("════════════════════════════════════════════════════════\n");
}

void metrics_print_detailed(void) {
    uart_puts("\n");
    uart_puts("╔════════════════════════════════════════════════════════╗\n");
    uart_puts("║       ANALISIS DETALLADO DE RENDIMIENTO               ║\n");
    uart_puts("╚════════════════════════════════════════════════════════╝\n");
    uart_puts("\n");

    // Análisis de eficiencia del scheduler
    uart_puts("EFICIENCIA DEL PLANIFICADOR:\n");
    uart_puts("  Procesos por ciclo:      ");
    if (system_metrics.total_cycles > 0) {
        uint32_t avg = system_metrics.process_switches / system_metrics.total_cycles;
        print_metric_value(avg);
    } else {
        uart_putc('0');
    }
    uart_puts("\n");

    uart_puts("  Tasa cambio contexto:    ");
    if (system_metrics.process_switches > 0) {
        print_percentage(system_metrics.context_switches, system_metrics.process_switches);
    } else {
        uart_puts("N/A");
    }
    uart_puts("\n\n");

    // Análisis de temperatura
    uart_puts("ANALISIS DE TEMPERATURA:\n");
    uart_puts("  Tasa de anomalias:       ");
    if (system_metrics.temp_readings > 0) {
        print_percentage(system_metrics.temp_anomalies, system_metrics.temp_readings);
    } else {
        uart_puts("N/A");
    }
    uart_puts("\n");

    uart_puts("  Eficiencia transmision:  ");
    if (system_metrics.temp_readings > 0) {
        print_percentage(system_metrics.temp_transmissions, system_metrics.temp_readings);
    } else {
        uart_puts("N/A");
    }
    uart_puts("\n\n");

    // Análisis del sistema de enfriamiento
    uart_puts("ANALISIS SISTEMA ENFRIAMIENTO:\n");
    uart_puts("  Eficiencia activacion:   ");
    if (system_metrics.temp_anomalies > 0) {
        print_percentage(system_metrics.cooling_activations, system_metrics.temp_anomalies);
    } else {
        uart_puts("N/A");
    }
    uart_puts("\n");

    uart_puts("  Tiempo promedio activo:  ");
    if (system_metrics.cooling_activations > 0) {
        uint32_t avg_time = system_metrics.cooling_total_time / system_metrics.cooling_activations;
        print_metric_value(avg_time);
        uart_puts(" min por activacion\n");
    } else {
        uart_puts("N/A\n");
    }
    uart_puts("\n");

    // Análisis de comunicación
    uart_puts("ANALISIS DE COMUNICACION:\n");
    uart_puts("  Bytes por mensaje:       ");
    if (system_metrics.uart_messages_sent > 0) {
        uint32_t avg_bytes = system_metrics.uart_bytes_sent / system_metrics.uart_messages_sent;
        print_metric_value(avg_bytes);
        uart_puts(" bytes\n");
    } else {
        uart_puts("N/A\n");
    }
    uart_puts("\n");

    // Estimación de memoria (basada en stack size de PCBs)
    uart_puts("ESTIMACION USO DE MEMORIA:\n");
    uart_puts("  Total stack allocated:   ");
    uint32_t total_stack = 4096 * 3;  // 3 procesos x 4KB
    print_metric_value(total_stack);
    uart_puts(" bytes\n");

    uart_puts("  PCB overhead:            ");
    uint32_t pcb_size = 33 * 4;  // 33 registros x 4 bytes
    uint32_t total_pcb = pcb_size * 3;
    print_metric_value(total_pcb);
    uart_puts(" bytes (");
    print_metric_value(pcb_size);
    uart_puts(" per process)\n\n");

    uart_puts("════════════════════════════════════════════════════════\n");
}

// Incrementadores
void metrics_inc_cycle(void) {
    system_metrics.total_cycles++;
}

void metrics_inc_context_switch(void) {
    system_metrics.context_switches++;
}

void metrics_inc_process_execution(uint8_t pid) {
    system_metrics.process_switches++;

    switch (pid) {
        case 1:
            system_metrics.p1_executions++;
            break;
        case 2:
            system_metrics.p2_executions++;
            break;
        case 3:
            system_metrics.p3_executions++;
            break;
    }
}

void metrics_inc_temp_reading(void) {
    system_metrics.temp_readings++;
}

void metrics_inc_temp_transmission(void) {
    system_metrics.temp_transmissions++;
}

void metrics_inc_temp_anomaly(uint8_t temp) {
    if (temp > 90) {
        system_metrics.temp_anomalies++;
    }
}

void metrics_inc_cooling_activation(void) {
    system_metrics.cooling_activations++;
}

void metrics_inc_cooling_deactivation(void) {
    system_metrics.cooling_deactivations++;
}

void metrics_inc_cooling_time(void) {
    system_metrics.cooling_total_time++;
}

void metrics_inc_uart_bytes(uint32_t bytes) {
    system_metrics.uart_bytes_sent += bytes;
}

void metrics_inc_uart_message(void) {
    system_metrics.uart_messages_sent++;
}

void metrics_inc_data_loss(void) {
    system_metrics.data_loss_events++;
}

void metrics_inc_abrupt_switch(void) {
    system_metrics.abrupt_switches++;
}

// Getters
metrics_t* metrics_get(void) {
    return &system_metrics;
}

float metrics_get_avg_context_switch_rate(void) {
    if (system_metrics.process_switches == 0) {
        return 0.0f;
    }
    return (float)system_metrics.context_switches / (float)system_metrics.process_switches;
}

float metrics_get_cooling_efficiency(void) {
    if (system_metrics.temp_anomalies == 0) {
        return 0.0f;
    }
    return (float)system_metrics.cooling_activations / (float)system_metrics.temp_anomalies;
}

// Funciones de timing usando RISC-V cycle counter
static inline uint64_t read_cycle_counter(void) {
    uint32_t low, high;

    // Leer el contador de ciclos (rdcycle y rdcycleh para RV32)
    __asm__ volatile (
        "rdcycle %0\n"
        "rdcycleh %1\n"
        : "=r"(low), "=r"(high)
    );

    return ((uint64_t)high << 32) | low;
}

void metrics_start_process_timing(void) {
    system_metrics.current_process_start = read_cycle_counter();
}

void metrics_stop_process_timing(uint8_t pid) {
    uint64_t end_cycles = read_cycle_counter();
    uint64_t elapsed = end_cycles - system_metrics.current_process_start;

    switch (pid) {
        case 1:
            system_metrics.p1_total_cycles += elapsed;
            break;
        case 2:
            system_metrics.p2_total_cycles += elapsed;
            break;
        case 3:
            system_metrics.p3_total_cycles += elapsed;
            break;
    }
}

uint64_t metrics_get_process_avg_cycles(uint8_t pid) {
    switch (pid) {
        case 1:
            return (system_metrics.p1_executions > 0) ?
                   (system_metrics.p1_total_cycles / system_metrics.p1_executions) : 0;
        case 2:
            return (system_metrics.p2_executions > 0) ?
                   (system_metrics.p2_total_cycles / system_metrics.p2_executions) : 0;
        case 3:
            return (system_metrics.p3_executions > 0) ?
                   (system_metrics.p3_total_cycles / system_metrics.p3_executions) : 0;
        default:
            return 0;
    }
}
