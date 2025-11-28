#include "process.h"
#include "uart.h"

// Tabla de PCBs para los 3 procesos
static pcb_t process_table[3];

// Declaraciones externas de funciones de inicialización
extern void process_init_p1(void);
extern void process_init_p2(void);
extern void process_init_p3(void);

void process_init(void) {
    // Inicializar PCB de Proceso 1
    process_table[0].pid = PROCESS_P1;
    process_table[0].state = PROCESS_READY;
    process_table[0].priority = 1;
    process_table[0].pc = 0;
    process_table[0].stack_base = 0x80010000;  // Stack en RAM
    process_table[0].stack_size = 0x1000;      // 4KB stack

    // Inicializar PCB de Proceso 2
    process_table[1].pid = PROCESS_P2;
    process_table[1].state = PROCESS_READY;
    process_table[1].priority = 2;
    process_table[1].pc = 0;
    process_table[1].stack_base = 0x80020000;
    process_table[1].stack_size = 0x1000;

    // Inicializar PCB de Proceso 3
    process_table[2].pid = PROCESS_P3;
    process_table[2].state = PROCESS_READY;
    process_table[2].priority = 3;
    process_table[2].pc = 0;
    process_table[2].stack_base = 0x80030000;
    process_table[2].stack_size = 0x1000;

    // Inicializar estados internos de cada proceso
    process_init_p1();
    process_init_p2();
    process_init_p3();

    uart_puts("[PROCESS] All processes initialized\n");
}

// Obtener PCB por ID
pcb_t* process_get_pcb(process_id_t pid) {
    if (pid >= PROCESS_P1 && pid <= PROCESS_P3) {
        return &process_table[pid - 1];
    }
    return NULL;
}

// Obtener todos los PCBs
pcb_t* process_get_all_pcbs(void) {
    return process_table;
}
