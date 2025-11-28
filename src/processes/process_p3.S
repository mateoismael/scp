# ==============================================================================
# Proceso P3: Display UART del Estado del Sistema
# ==============================================================================
# Este proceso en Assembly RISC-V RV32:
# - Muestra el estado completo del sistema satelital por UART
# - Despliega temperatura recibida de P1
# - Muestra estado del sistema de enfriamiento
# - Muestra posición orbital
# - Protocolo serial UART
# ==============================================================================

.section .text
.globl process_p3_uart_display
.globl process_init_p3

# ==============================================================================
# Estado del proceso P3 (variables estáticas)
# ==============================================================================
.section .bss
.align 4
p3_display_count: .word 0
.align 2

.section .text

# ==============================================================================
# process_init_p3: Inicialización del proceso P3
# ==============================================================================
process_init_p3:
    addi sp, sp, -16
    sw ra, 12(sp)

    # Inicializar contador de displays
    la t0, p3_display_count
    sw zero, 0(t0)

    lw ra, 12(sp)
    addi sp, sp, 16
    ret

# ==============================================================================
# process_p3_uart_display: Ejecución principal del proceso P3
# ==============================================================================
process_p3_uart_display:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    sw s1, 20(sp)
    sw s2, 16(sp)
    sw s3, 12(sp)

    # ==== Incrementar contador de displays ====
    la t0, p3_display_count
    lw t1, 0(t0)
    addi t1, t1, 1
    sw t1, 0(t0)

    # ==== Mostrar encabezado ====
    la a0, str_p3_header
    call uart_puts

    # ==== Leer estado del satélite ====
    la s0, satellite

    # s0 = dirección base de satellite_state_t
    lbu s1, 0(s0)                     # s1 = current_temp
    lbu s2, 1(s0)                     # s2 = cooling_active
    lbu s3, 2(s0)                     # s3 = orbital_position

    # ==== Mostrar temperatura actual ====
    la a0, str_p3_temp
    call uart_puts

    mv a0, s1
    call uart_send_temp

    # ==== Mostrar estado de cooling ====
    la a0, str_p3_cooling
    call uart_puts

    bnez s2, cooling_is_active

cooling_is_off:
    la a0, str_p3_cooling_off
    call uart_puts
    j show_orbital_pos

cooling_is_active:
    la a0, str_p3_cooling_on
    call uart_puts

show_orbital_pos:
    # ==== Mostrar posición orbital ====
    la a0, str_p3_orbital
    call uart_puts

    # Determinar zona orbital
    li t0, 42
    blt s3, t0, bright_zone

dark_zone:
    la a0, str_p3_zone_dark
    call uart_puts
    j show_minute

bright_zone:
    la a0, str_p3_zone_bright
    call uart_puts

show_minute:
    # ==== Mostrar minuto orbital ====
    la a0, str_p3_minute
    call uart_puts

    mv a0, s3
    call uart_print_decimal

    la a0, str_p3_of_100
    call uart_puts

    # ==== Mostrar resumen del sistema ====
    la a0, str_p3_system_status
    call uart_puts

    # Verificar si todo está nominal
    li t0, 90
    bgt s1, t0, system_warning

    li t0, 45
    blt s1, t0, system_warning

system_nominal:
    la a0, str_p3_status_ok
    call uart_puts
    j p3_footer

system_warning:
    la a0, str_p3_status_warning
    call uart_puts

p3_footer:
    # ==== Mostrar pie de página ====
    la a0, str_p3_separator
    call uart_puts

    # Registrar bytes transmitidos por UART
    # (aproximadamente 200 bytes por display)
    li a0, 200
    call metrics_inc_uart_bytes

p3_exit:
    # Restaurar registros y retornar
    lw s3, 12(sp)
    lw s2, 16(sp)
    lw s1, 20(sp)
    lw s0, 24(sp)
    lw ra, 28(sp)
    addi sp, sp, 32
    ret

# ==============================================================================
# uart_print_decimal: Imprime un número decimal por UART
# Argumentos: a0 = número a imprimir
# ==============================================================================
uart_print_decimal:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    sw s1, 20(sp)

    mv s0, a0                         # s0 = número
    addi s1, sp, 8                    # s1 = buffer en stack

    # Caso especial: cero
    bnez s0, convert_loop
    li a0, '0'
    call uart_putc
    j print_decimal_exit

convert_loop:
    # Convertir número a string (en reversa)
    li t2, 0                          # contador de dígitos
    mv t0, s0

digit_loop:
    beqz t0, print_digits
    # Calcular t0 % 10 y t0 / 10 manualmente (RV32I sin extensión M)
    li t1, 10
    mv t3, t0                         # t3 = número original
    li t4, 0                          # t4 = cociente
div_loop:
    blt t3, t1, div_done
    sub t3, t3, t1
    addi t4, t4, 1
    j div_loop
div_done:
    # t3 = resto (dígito), t4 = cociente
    addi t3, t3, '0'                  # convertir a ASCII
    add t5, s1, t2
    sb t3, 0(t5)
    mv t0, t4                         # t0 = cociente para próxima iteración
    addi t2, t2, 1
    j digit_loop

print_digits:
    # Imprimir dígitos en orden correcto
    beqz t2, print_decimal_exit
    addi t2, t2, -1
    add t4, s1, t2
    lbu a0, 0(t4)
    call uart_putc
    j print_digits

print_decimal_exit:
    lw s1, 20(sp)
    lw s0, 24(sp)
    lw ra, 28(sp)
    addi sp, sp, 32
    ret

# ==============================================================================
# Strings de mensajes
# ==============================================================================
.section .rodata
.align 2

str_p3_header:
    .string "\n======== [P3] TELEMETRIA DEL SATELITE ========\n"

str_p3_temp:
    .string "[P3] Temperatura: "

str_p3_cooling:
    .string "[P3] Sistema de Enfriamiento: "

str_p3_cooling_on:
    .string "ACTIVO\n"

str_p3_cooling_off:
    .string "EN ESPERA\n"

str_p3_orbital:
    .string "[P3] Zona Orbital: "

str_p3_zone_bright:
    .string "LUMINOSA (Exposicion solar)\n"

str_p3_zone_dark:
    .string "OSCURA (Sombra terrestre)\n"

str_p3_minute:
    .string "[P3] Minuto de Orbita: "

str_p3_of_100:
    .string " / 100\n"

str_p3_system_status:
    .string "[P3] Estado del Sistema: "

str_p3_status_ok:
    .string "NORMAL\n"

str_p3_status_warning:
    .string "ADVERTENCIA - Temperatura fuera de rango normal\n"

str_p3_separator:
    .string "================================================\n"
