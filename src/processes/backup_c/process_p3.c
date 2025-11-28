#include "process.h"
#include "uart.h"
#include "satellite.h"

// Proceso 3: Recepción y Visualización de Datos
// Este proceso:
// - Recibe lecturas de temperatura vía UART (de P1)
// - Muestra los datos recibidos
// - Implementa protocolo de comunicación serial

// Estado del proceso P3
static struct {
    uint8_t received_temp;
    uint32_t packets_received;
    bool data_available;
} p3_state;

void process_init_p3(void) {
    p3_state.received_temp = 0;
    p3_state.packets_received = 0;
    p3_state.data_available = false;
}

// Proceso P3 - Ejecución principal
void process_p3_uart_display(void) {
    // Recibir datos del sensor vía UART (proveniente de P1)
    // En esta simulación, leemos directamente del estado global
    // En un sistema real, esto sería una recepción UART asíncrona

    uint8_t received_temp = satellite.current_temp;

    if (received_temp != p3_state.received_temp || !p3_state.data_available) {
        // Nuevo dato recibido
        p3_state.received_temp = received_temp;
        p3_state.data_available = true;
        p3_state.packets_received++;

        // Mostrar lectura recibida
        uart_puts("[P3] UART Reception | Packet #");

        // Convertir número de paquete a string (función inline optimizada)
        uint32_t pkt = p3_state.packets_received;
        char buf[12];
        int i = 0;

        if (pkt == 0) {
            uart_putc('0');
        } else {
            while (pkt > 0) {
                buf[i++] = '0' + (pkt % 10);
                pkt /= 10;
            }
            while (i > 0) {
                uart_putc(buf[--i]);
            }
        }

        uart_puts(" | Sensor Reading: ");
        uart_send_temp(received_temp);

        // Mostrar zona orbital actual
        if (satellite.current_zone == ORBIT_BRIGHT) {
            uart_puts("[P3] Orbital Zone: BRIGHT\n");
        } else {
            uart_puts("[P3] Orbital Zone: DARK\n");
        }

        // Mostrar estado del enfriamiento
        if (satellite.cooling_active) {
            uart_puts("[P3] Cooling Status: ACTIVE\n");
        } else {
            uart_puts("[P3] Cooling Status: STANDBY\n");
        }
    }
}

// Getter para datos recibidos
uint8_t p3_get_received_temp(void) {
    return p3_state.received_temp;
}

uint32_t p3_get_packets_received(void) {
    return p3_state.packets_received;
}
