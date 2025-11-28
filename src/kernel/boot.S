# boot.S - Entry point en Assembly RISC-V RV32I
# Este archivo maneja el arranque inicial del sistema

.section .text.init
.global _start

_start:
    # Deshabilitar interrupciones
    csrw mie, zero
    csrw mip, zero

    # Configurar stack pointer
    # QEMU virt tiene RAM en 0x80000000
    la sp, _stack_top

    # Limpiar BSS (datos no inicializados)
    la t0, _bss_start
    la t1, _bss_end
clear_bss:
    beq t0, t1, bss_done
    sw zero, 0(t0)
    addi t0, t0, 4
    j clear_bss

bss_done:
    # Saltar a main en C
    call main

    # Si main retorna, loop infinito
halt:
    wfi
    j halt

# Sección de datos
.section .data
_stack_top:
    .space 4096  # Stack de 4KB

.section .bss
_bss_start:
_bss_end:
