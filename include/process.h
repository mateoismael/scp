#ifndef PROCESS_H
#define PROCESS_H

#include "types.h"

// Estados de proceso
typedef enum {
    PROCESS_READY,
    PROCESS_RUNNING,
    PROCESS_BLOCKED,
    PROCESS_TERMINATED
} process_state_t;

// IDs de procesos
typedef enum {
    PROCESS_P1 = 1,  // Adquisición de temperatura
    PROCESS_P2 = 2,  // Sistema de enfriamiento
    PROCESS_P3 = 3   // Recepción UART
} process_id_t;

// Control Block del Proceso (PCB)
// Estructura alineada con context_switch.S
typedef struct {
    // Offset 0: PC guardado
    uint32_t pc;          // Program Counter (mepc)

    // Offset 4-127: Registros x1-x31 (32 registros)
    uint32_t x1;          // ra (return address)
    uint32_t x2;          // sp (stack pointer)
    uint32_t x3;          // gp
    uint32_t x4;          // tp
    uint32_t x5_x7[3];    // t0-t2
    uint32_t x8_x9[2];    // s0-s1
    uint32_t x10_x17[8];  // a0-a7
    uint32_t x18_x27[10]; // s2-s11
    uint32_t x28_x31[4];  // t3-t6

    // Metadata del proceso
    process_id_t pid;
    process_state_t state;
    uint32_t priority;

    // Stack del proceso
    uint32_t stack_base;
    uint32_t stack_size;
} pcb_t;

// Funciones de proceso
void process_init(void);
void process_p1_temp_acquisition(void);
void process_p2_cooling_control(void);
void process_p3_uart_display(void);

// Funciones auxiliares
pcb_t* process_get_pcb(process_id_t pid);
pcb_t* process_get_all_pcbs(void);

// Getters de estado de procesos
uint8_t p1_get_current_temp(void);
bool p1_is_transmitting(void);
bool p2_is_cooling_active(void);
uint8_t p3_get_received_temp(void);
uint32_t p3_get_packets_received(void);

#endif // PROCESS_H
