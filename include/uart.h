#ifndef UART_H
#define UART_H

#include "types.h"

// Configuración UART
#define UART_BASE_ADDR 0x10000000  // Dirección base UART en QEMU virt

// Registros UART
#define UART_RBR (UART_BASE_ADDR + 0x00)  // Receiver Buffer Register
#define UART_THR (UART_BASE_ADDR + 0x00)  // Transmitter Holding Register
#define UART_IER (UART_BASE_ADDR + 0x01)  // Interrupt Enable Register
#define UART_LSR (UART_BASE_ADDR + 0x05)  // Line Status Register

// Funciones UART
void uart_init(void);
void uart_putc(char c);
char uart_getc(void);
void uart_puts(const char* str);
void uart_send_temp(uint8_t temp);
uint8_t uart_recv_temp(void);
void uart_print_hex(uint32_t num);

#endif // UART_H
