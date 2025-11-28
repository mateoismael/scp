#include "types.h"
#include "uart.h"
#include "process.h"
#include "scheduler.h"
#include "satellite.h"
#include "metrics.h"

// Entry point principal del kernel
int main(void) {
    // Inicializar UART para comunicación
    uart_init();
    uart_puts("\n=== Sistema de Control Termico Satelital ===\n");
    uart_puts("Kernel RISC-V RV32I\n");
    uart_puts("UTEC - Proyecto Final Sistemas de Computo\n\n");

    // Inicializar métricas de rendimiento
    metrics_init();
    uart_puts("[INICIO] Metricas de rendimiento inicializadas\n");

    // Inicializar estado del satélite
    satellite_init();
    uart_puts("[INICIO] Estado del satelite inicializado\n");

    // Inicializar procesos
    process_init();
    uart_puts("[INICIO] Procesos inicializados\n");

    // Inicializar scheduler
    // Para cambiar de escenario usa: ./cambiar_escenario.sh [1-4]
    // SCHED_BASELINE, SCHED_PRIORITY_1, SCHED_PRIORITY_2, SCHED_SYSCALLS
    scheduler_init(SCHED_SYSCALLS);

    // Ejecutar scheduler
    uart_puts("[KERNEL] Iniciando ejecucion de procesos...\n\n");
    scheduler_run();

    // Imprimir reportes de métricas
    uart_puts("\n\n");
    metrics_print_summary();
    uart_puts("\n");
    metrics_print_detailed();

    // Fin de ejecución normal
    uart_puts("\n[KERNEL] Ejecucion completada exitosamente\n");
    while(1);

    return 0;  // Nunca alcanzado
}
