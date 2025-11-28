# ==============================================================================
# Proceso P1: Adquisición de Señales de Temperatura
# ==============================================================================
# Este proceso en Assembly RISC-V RV32:
# - Lee temperatura desde memoria cargada por QEMU (dirección 0x80020000)
# - Ciclo: 5 minutos sensing + 1 minuto transmission
# - Captura PC cuando detecta temperatura límite (>90°C)
# - Actualiza estado global del satélite
# ==============================================================================

.section .text
.globl process_p1_temp_acquisition
.globl process_init_p1

# ==============================================================================
# Definiciones y constantes
# ==============================================================================
.equ TEMP_DATA_ADDR,    0x80020000    # Dirección donde QEMU carga temps.txt
.equ TEMP_LIMIT,        90            # Temperatura límite para capturar PC
.equ SENSING_TIME,      5             # 5 minutos sensing
.equ TRANSMISSION_TIME, 1             # 1 minuto transmission

# ==============================================================================
# Estado del proceso P1 (variables estáticas)
# ==============================================================================
.section .bss
.align 4
p1_current_minute:  .word 0
p1_current_temp:    .byte 0
p1_sensor_active:   .byte 0
p1_limit_pc:        .word 0           # PC capturado cuando temp > límite
.align 2

.section .text

# ==============================================================================
# process_init_p1: Inicialización del proceso P1
# ==============================================================================
process_init_p1:
    addi sp, sp, -16
    sw ra, 12(sp)

    # Inicializar variables
    la t0, p1_current_minute
    sw zero, 0(t0)

    la t0, p1_current_temp
    sb zero, 0(t0)

    la t0, p1_sensor_active
    li t1, 1
    sb t1, 0(t0)

    la t0, p1_limit_pc
    sw zero, 0(t0)

    lw ra, 12(sp)
    addi sp, sp, 16
    ret

# ==============================================================================
# process_p1_temp_acquisition: Ejecución principal del proceso P1
# ==============================================================================
process_p1_temp_acquisition:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    sw s1, 20(sp)
    sw s2, 16(sp)
    sw s3, 12(sp)

    # ==== Cargar minuto actual ====
    la s0, p1_current_minute
    lw s1, 0(s0)                      # s1 = current_minute

    # ==== Leer temperatura desde memoria (cargada por QEMU) ====
    li t0, TEMP_DATA_ADDR
    add t0, t0, s1                    # temp_addr + minute_offset
    lbu s2, 0(t0)                     # s2 = current_temp (cargar byte sin signo)

    # ==== Guardar temperatura actual ====
    la t0, p1_current_temp
    sb s2, 0(t0)

    # ==== Actualizar satellite.current_temp (global) ====
    la t0, satellite
    sb s2, 0(t0)                      # satellite.current_temp = s2
    sb s1, 2(t0)                      # satellite.orbital_position = minuto actual

    # ==== Registrar lectura de temperatura ====
    call metrics_inc_temp_reading

    # ==== Determinar fase: sensing o transmission ====
    # Calcular minute % 6 sin usar rem (RV32I no tiene extensión M)
    mv t1, s1                         # t1 = minute
    li t2, 6
mod_loop:
    blt t1, t2, mod_done
    sub t1, t1, t2
    j mod_loop
mod_done:
    # t1 ahora contiene minute % 6
    li t0, SENSING_TIME
    blt t1, t0, sensing_phase         # if (minute % 6) < 5 -> sensing

transmission_phase:
    # ==== Fase de transmisión (1 minuto) ====
    # Imprimir mensaje
    la a0, str_p1_transmission
    call uart_puts

    # Enviar temperatura por UART
    mv a0, s2
    call uart_send_temp

    # Registrar métricas
    call metrics_inc_temp_transmission

    j check_temp_limit

sensing_phase:
    # ==== Fase de sensing (5 minutos) ====
    la a0, str_p1_sensing
    call uart_puts

    la a0, str_p1_reading
    call uart_puts

    mv a0, s2
    call uart_send_temp

check_temp_limit:
    # ==== Verificar si temperatura excede límite (>90°C) ====
    li t0, TEMP_LIMIT
    ble s2, t0, no_limit_exceeded     # if temp <= 90, skip

limit_exceeded:
    # ==== CAPTURAR PC cuando se detecta temperatura límite ====
    auipc t1, 0                       # Obtener PC actual
    la t0, p1_limit_pc
    sw t1, 0(t0)                      # Guardar PC capturado

    # Imprimir alerta de temperatura límite
    la a0, str_p1_limit_alert
    call uart_puts

    la a0, str_p1_pc_captured
    call uart_puts

    # Imprimir valor del PC capturado (en hex)
    mv a0, t1
    call uart_print_hex

    la a0, str_newline
    call uart_puts

    # Registrar anomalía en métricas (pasar temperatura en a0)
    mv a0, s2                         # a0 = temperatura actual
    call metrics_inc_temp_anomaly

no_limit_exceeded:
    # ==== Avanzar al siguiente minuto ====
    addi s1, s1, 1
    li t0, 100
    bge s1, t0, reset_minute          # if minute >= 100, reset to 0

    # Guardar minuto actualizado
    la t0, p1_current_minute
    sw s1, 0(t0)
    j p1_exit

reset_minute:
    # Resetear a minuto 0 (nueva órbita)
    la t0, p1_current_minute
    sw zero, 0(t0)

p1_exit:
    # Restaurar registros y retornar
    lw s3, 12(sp)
    lw s2, 16(sp)
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

str_p1_transmission:
    .string "[P1] FASE TRANSMISION | Enviando datos... | Temp: "

str_p1_sensing:
    .string "[P1] FASE SENSADO | Leyendo sensor... | "

str_p1_reading:
    .string "Temperatura: "

str_p1_limit_alert:
    .string "\n*** [P1] ALERTA: Temperatura limite excedida! ***\n"

str_p1_pc_captured:
    .string "[P1] PC capturado en: 0x"

str_newline:
    .string "\n"
