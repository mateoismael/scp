#include "uart.h"
#include "metrics.h"

// Punteros a registros UART
static volatile uint8_t* const uart_rbr = (uint8_t*)UART_RBR;
static volatile uint8_t* const uart_thr = (uint8_t*)UART_THR;
static volatile uint8_t* const uart_lsr = (uint8_t*)UART_LSR;

void uart_init(void) {
    // En QEMU virt, el UART ya está inicializado
    // No se necesita configuración adicional
}

void uart_putc(char c) {
    // Esperar a que el transmisor esté listo
    while ((*uart_lsr & 0x20) == 0);

    // Enviar carácter
    *uart_thr = c;

    // Registrar byte enviado
    metrics_inc_uart_bytes(1);
}

char uart_getc(void) {
    // Esperar a que haya datos disponibles
    while ((*uart_lsr & 0x01) == 0);

    // Leer carácter
    return *uart_rbr;
}

void uart_puts(const char* str) {
    while (*str) {
        if (*str == '\n') {
            uart_putc('\r');  // Carriage return para nueva línea
        }
        uart_putc(*str++);
    }
}

// Convertir número a string y enviar
static void uart_print_uint(uint32_t num) {
    char buf[12] = {0};  // Inicializar a cero
    int i = 0;

    if (num == 0) {
        uart_putc('0');
        return;
    }

    while (num > 0 && i < 11) {  // Prevenir overflow
        buf[i++] = '0' + (num % 10);
        num /= 10;
    }

    // Imprimir en orden inverso
    while (i > 0) {
        uart_putc(buf[--i]);
    }
}

void uart_send_temp(uint8_t temp) {
    uart_puts("TEMP:");
    uart_print_uint(temp);
    uart_putc('C');
    uart_putc('\n');

    // Registrar mensaje UART
    metrics_inc_uart_message();
}

uint8_t uart_recv_temp(void) {
    // Implementación simple: leer temperatura
    // En una implementación real, parsearía el protocolo
    char c = uart_getc();
    return (uint8_t)(c - '0');  // Conversión básica
}

void uart_print_hex(uint32_t num) {
    const char hex_chars[] = "0123456789ABCDEF";
    char buf[8];  // 32-bit = 8 hex digits
    int i;

    // Convertir a hexadecimal (de derecha a izquierda)
    for (i = 7; i >= 0; i--) {
        buf[i] = hex_chars[num & 0xF];
        num >>= 4;
    }

    // Imprimir los 8 dígitos
    for (i = 0; i < 8; i++) {
        uart_putc(buf[i]);
    }
}
