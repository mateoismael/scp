#ifndef SCHEDULER_H
#define SCHEDULER_H

#include "process.h"

// Modos de scheduling
typedef enum {
    SCHED_BASELINE,      // Escenario 1: Secuencial sin prioridades
    SCHED_PRIORITY_1,    // Escenario 2: P1→P3→P2
    SCHED_PRIORITY_2,    // Escenario 3: P2→P1→P3
    SCHED_SYSCALLS       // Escenario 4: Con syscalls y context switching
} sched_mode_t;

// Funciones del scheduler
void scheduler_init(sched_mode_t mode);
void scheduler_run(void);
pcb_t* scheduler_get_next_process(void);
void scheduler_yield(void);
void scheduler_switch_context(pcb_t* old_proc, pcb_t* new_proc);

#endif // SCHEDULER_H
