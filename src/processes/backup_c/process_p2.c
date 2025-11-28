#include "process.h"
#include "uart.h"
#include "satellite.h"
#include "metrics.h"

// Proceso 2: Control del Sistema de Enfriamiento
// Este proceso:
// - Monitorea la temperatura de P1
// - Activa enfriamiento cuando temp > 90°C
// - Desactiva enfriamiento cuando temp ≤ 60°C
// - Muestra alertas de activación/desactivación

// Estado del proceso P2
static struct {
    bool cooling_active;
    uint8_t last_temp;
} p2_state;

void process_init_p2(void) {
    p2_state.cooling_active = false;
    p2_state.last_temp = 0;
}

// Proceso P2 - Ejecución principal
void process_p2_cooling_control(void) {
    // Leer temperatura actual del satélite
    uint8_t current_temp = satellite.current_temp;
    p2_state.last_temp = current_temp;

    // Lógica de control del sistema de enfriamiento
    if (!p2_state.cooling_active && current_temp > COOLING_THRESHOLD_ON) {
        // Activar sistema de enfriamiento
        p2_state.cooling_active = true;
        satellite.cooling_active = true;

        // Registrar activación
        metrics_inc_cooling_activation();

        // Alerta de activación
        uart_puts("\n*** [P2] COOLING SYSTEM ACTIVATED ***\n");
        uart_puts("[P2] Temperature exceeded threshold: ");
        uart_send_temp(current_temp);
        uart_puts("[P2] Deploying thermal management techniques...\n");

    } else if (p2_state.cooling_active && current_temp <= COOLING_THRESHOLD_OFF) {
        // Desactivar sistema de enfriamiento
        p2_state.cooling_active = false;
        satellite.cooling_active = false;

        // Registrar desactivación
        metrics_inc_cooling_deactivation();

        // Alerta de desactivación
        uart_puts("\n*** [P2] COOLING SYSTEM DEACTIVATED ***\n");
        uart_puts("[P2] Temperature normalized: ");
        uart_send_temp(current_temp);
        uart_puts("[P2] Thermal management standby mode\n");
    }

    // Acumular tiempo de cooling activo
    if (p2_state.cooling_active) {
        metrics_inc_cooling_time();
        uart_puts("[P2] Cooling active | Temp: ");
        uart_send_temp(current_temp);
    } else {
        uart_puts("[P2] Cooling standby | Temp: ");
        uart_send_temp(current_temp);
    }
}

// Getter para estado del enfriamiento
bool p2_is_cooling_active(void) {
    return p2_state.cooling_active;
}
