#include "process.h"
#include "uart.h"
#include "satellite.h"
#include "metrics.h"

// Proceso 1: Adquisición de Señales de Temperatura
// Este proceso simula un sensor de temperatura que:
// - Lee temperatura cada 5 minutos
// - Transmite datos por 1 minuto
// - Genera anomalías para activar el sistema de enfriamiento

// Datos simulados de temperatura durante una órbita LEO (100 minutos)
// Incluye anomalías (>90°C) para activar enfriamiento
static const uint8_t temperature_data[] = {
    // Minuto 0-5: Inicio zona luminosa
    55, 58, 62, 67, 72,
    // Minuto 5-10: Calentamiento
    78, 85, 92, 95, 98,  // Anomalía: 92°C, 95°C, 98°C activan enfriamiento
    // Minuto 10-15: Temperatura alta
    96, 94, 90, 87, 82,
    // Minuto 15-20: Enfriamiento
    76, 70, 65, 61, 58,  // 61°C y 58°C desactivan enfriamiento
    // Minuto 20-25: Estable
    56, 54, 52, 50, 49,
    // Minuto 25-30: Subida gradual
    51, 54, 58, 63, 68,
    // Minuto 30-35: Pico de temperatura
    74, 82, 91, 97, 99,  // Anomalía: activa enfriamiento
    // Minuto 35-40: Alta temperatura
    98, 95, 91, 86, 80,
    // Minuto 40-42: Fin zona luminosa
    74, 68,
    // Minuto 42-50: Inicio zona oscura
    62, 57, 53, 50, 48, 47, 46, 46,
    // Minuto 50-60: Zona oscura fría
    45, 45, 46, 47, 48, 49, 50, 51, 52, 53,
    // Minuto 60-70: Estable en zona oscura
    54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
    // Minuto 70-80: Ligero calentamiento
    64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
    // Minuto 80-90: Preparación para zona luminosa
    74, 75, 76, 77, 78, 79, 80, 81, 82, 83,
    // Minuto 90-100: Transición
    84, 85, 86, 87, 88, 89, 90, 91, 92, 93
};

// Estado del proceso P1
static struct {
    uint32_t current_minute;
    uint8_t current_temp;
    bool is_transmitting;
} p1_state;

void process_init_p1(void) {
    p1_state.current_minute = 0;
    p1_state.current_temp = temperature_data[0];
    p1_state.is_transmitting = false;
}

// Proceso P1 - Ejecución principal
void process_p1_temp_acquisition(void) {
    // Este proceso se ejecuta cada minuto durante la órbita

    // Cada 6 minutos: 5 min sensing + 1 min transmisión
    uint32_t cycle = p1_state.current_minute % 6;

    if (cycle < 5) {
        // Modo sensing: leer temperatura del sensor
        uint32_t temp_index = p1_state.current_minute % 100;
        p1_state.current_temp = temperature_data[temp_index];
        p1_state.is_transmitting = false;

        // Registrar lectura de temperatura
        metrics_inc_temp_reading();

        // Detectar anomalía
        if (p1_state.current_temp > 90) {
            metrics_inc_temp_anomaly(p1_state.current_temp);
        }

        // Feedback al usuario (solo para debug)
        uart_puts("[P1] Sensing temperature: ");

    } else if (cycle == 5) {
        // Modo transmisión: enviar dato por UART
        p1_state.is_transmitting = true;

        uart_puts("[P1] Transmitting temperature via UART: ");
        uart_send_temp(p1_state.current_temp);

        // Registrar transmisión
        metrics_inc_temp_transmission();

        // Guardar temperatura en estado global del satélite
        satellite.current_temp = p1_state.current_temp;
    }

    // Avanzar minuto
    p1_state.current_minute++;
    if (p1_state.current_minute >= 100) {
        p1_state.current_minute = 0;  // Reiniciar órbita
    }

    // Actualizar estado del satélite
    satellite_update_time(1);
}

// Getter para obtener temperatura actual (usado por P2)
uint8_t p1_get_current_temp(void) {
    return p1_state.current_temp;
}

// Getter para saber si está transmitiendo
bool p1_is_transmitting(void) {
    return p1_state.is_transmitting;
}
