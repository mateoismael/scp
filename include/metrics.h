#ifndef METRICS_H
#define METRICS_H

#include "types.h"

// Estructura para métricas de rendimiento
typedef struct {
    // Métricas de scheduler
    uint32_t total_cycles;              // Ciclos totales del scheduler
    uint32_t context_switches;          // Número de cambios de contexto
    uint32_t process_switches;          // Cambios totales de proceso

    // Métricas por proceso
    uint32_t p1_executions;             // Ejecuciones de P1
    uint32_t p2_executions;             // Ejecuciones de P2
    uint32_t p3_executions;             // Ejecuciones de P3

    // Tiempos de ejecución (en ciclos de CPU)
    uint64_t p1_total_cycles;           // Ciclos totales de P1
    uint64_t p2_total_cycles;           // Ciclos totales de P2
    uint64_t p3_total_cycles;           // Ciclos totales de P3
    uint64_t current_process_start;     // Ciclo de inicio del proceso actual

    // Métricas de temperatura
    uint32_t temp_readings;             // Lecturas de temperatura totales
    uint32_t temp_transmissions;        // Transmisiones UART de temperatura
    uint32_t temp_anomalies;            // Temperaturas > 90°C detectadas

    // Métricas de sistema de enfriamiento
    uint32_t cooling_activations;       // Veces que se activó el cooling
    uint32_t cooling_deactivations;     // Veces que se desactivó
    uint32_t cooling_total_time;        // Minutos totales con cooling activo

    // Métricas de memoria (estáticas en bare-metal)
    uint32_t stack_p1_usage;            // Uso estimado de stack P1
    uint32_t stack_p2_usage;            // Uso estimado de stack P2
    uint32_t stack_p3_usage;            // Uso estimado de stack P3

    // Métricas de UART
    uint32_t uart_bytes_sent;           // Bytes totales enviados por UART
    uint32_t uart_messages_sent;        // Mensajes totales enviados

    // Métricas de data loss (para Priority 1 y 2)
    uint32_t data_loss_events;          // Eventos de pérdida de datos detectados
    uint32_t abrupt_switches;           // Switches abruptos (no consecutivos)

} metrics_t;

// Funciones de métricas
void metrics_init(void);
void metrics_print_summary(void);
void metrics_print_detailed(void);

// Incrementadores de métricas
void metrics_inc_cycle(void);
void metrics_inc_context_switch(void);
void metrics_inc_process_execution(uint8_t pid);
void metrics_inc_temp_reading(void);
void metrics_inc_temp_transmission(void);
void metrics_inc_temp_anomaly(uint8_t temp);
void metrics_inc_cooling_activation(void);
void metrics_inc_cooling_deactivation(void);
void metrics_inc_cooling_time(void);
void metrics_inc_uart_bytes(uint32_t bytes);
void metrics_inc_uart_message(void);
void metrics_inc_data_loss(void);
void metrics_inc_abrupt_switch(void);

// Getters para análisis
metrics_t* metrics_get(void);
float metrics_get_avg_context_switch_rate(void);
float metrics_get_cooling_efficiency(void);

// Funciones de timing
void metrics_start_process_timing(void);
void metrics_stop_process_timing(uint8_t pid);
uint64_t metrics_get_process_avg_cycles(uint8_t pid);

#endif // METRICS_H
