# ==============================================================================
# Proceso P2: Control del Sistema de Enfriamiento
# ==============================================================================
# Este proceso en Assembly RISC-V RV32:
# - Monitorea la temperatura del satélite
# - Activa enfriamiento cuando temp > 90°C
# - Desactiva enfriamiento cuando temp < 55°C (corregido desde 60°C)
# - Captura PC cuando se activa/desactiva el sistema
# - Muestra alertas por UART
# ==============================================================================

.section .text
.globl process_p2_cooling_control
.globl process_init_p2
.globl p2_is_cooling_active

# ==============================================================================
# Definiciones y constantes
# ==============================================================================
.equ COOLING_THRESHOLD_ON,  90        # Activar cuando temp > 90°C
.equ COOLING_THRESHOLD_OFF, 55        # Desactivar cuando temp < 55°C (CORREGIDO)

# ==============================================================================
# Estado del proceso P2 (variables estáticas)
# ==============================================================================
.section .bss
.align 4
p2_cooling_active:  .byte 0
p2_last_temp:       .byte 0
p2_activation_pc:   .word 0           # PC cuando se activa cooling
p2_deactivation_pc: .word 0           # PC cuando se desactiva cooling
.align 2

.section .text

# ==============================================================================
# process_init_p2: Inicialización del proceso P2
# ==============================================================================
process_init_p2:
    addi sp, sp, -16
    sw ra, 12(sp)

    # Inicializar variables
    la t0, p2_cooling_active
    sb zero, 0(t0)

    la t0, p2_last_temp
    sb zero, 0(t0)

    la t0, p2_activation_pc
    sw zero, 0(t0)

    la t0, p2_deactivation_pc
    sw zero, 0(t0)

    lw ra, 12(sp)
    addi sp, sp, 16
    ret

# ==============================================================================
# process_p2_cooling_control: Ejecución principal del proceso P2
# ==============================================================================
process_p2_cooling_control:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    sw s1, 20(sp)
    sw s2, 16(sp)
    sw s3, 12(sp)

    # ==== Leer temperatura actual del satélite ====
    la t0, satellite
    lbu s0, 0(t0)                     # s0 = satellite.current_temp

    # Guardar última temperatura
    la t0, p2_last_temp
    sb s0, 0(t0)

    # ==== Leer estado de cooling actual ====
    la t0, p2_cooling_active
    lbu s1, 0(t0)                     # s1 = cooling_active (0 o 1)

    # ==== Verificar si debe activarse el cooling ====
    bnez s1, check_deactivation       # if cooling_active, check deactivation

check_activation:
    # Cooling está OFF, verificar si debe activarse
    li t0, COOLING_THRESHOLD_ON
    ble s0, t0, cooling_standby       # if temp <= 90, stay standby

activate_cooling:
    # ==== ACTIVAR SISTEMA DE ENFRIAMIENTO ====

    # Capturar PC usando auipc (Get current PC)
    auipc t1, 0                           # t1 = current PC
    la t0, p2_activation_pc
    sw t1, 0(t0)

    # Actualizar estado local
    la t0, p2_cooling_active
    li t1, 1
    sb t1, 0(t0)

    # Actualizar estado global del satélite
    la t0, satellite
    sb t1, 1(t0)                      # satellite.cooling_active = true

    # Registrar métrica
    call metrics_inc_cooling_activation

    # Mostrar alerta de activación
    la a0, str_p2_activated_header
    call uart_puts

    la a0, str_p2_temp_exceeded
    call uart_puts

    mv a0, s0
    call uart_send_temp

    la a0, str_p2_deploying
    call uart_puts

    # Mostrar PC capturado
    la a0, str_p2_pc_activation
    call uart_puts

    la t0, p2_activation_pc
    lw a0, 0(t0)
    call uart_print_hex

    la a0, str_newline
    call uart_puts

    j p2_exit

check_deactivation:
    # Cooling está ON, verificar si debe desactivarse
    li t0, COOLING_THRESHOLD_OFF
    bge s0, t0, cooling_active_state  # if temp >= 55, keep active

deactivate_cooling:
    # ==== DESACTIVAR SISTEMA DE ENFRIAMIENTO ====

    # Capturar PC usando auipc (Get current PC)
    auipc t1, 0                           # t1 = current PC
    la t0, p2_deactivation_pc
    sw t1, 0(t0)

    # Actualizar estado local
    la t0, p2_cooling_active
    sb zero, 0(t0)

    # Actualizar estado global del satélite
    la t0, satellite
    sb zero, 1(t0)                    # satellite.cooling_active = false

    # Registrar métrica
    call metrics_inc_cooling_deactivation

    # Mostrar alerta de desactivación
    la a0, str_p2_deactivated_header
    call uart_puts

    la a0, str_p2_temp_normalized
    call uart_puts

    mv a0, s0
    call uart_send_temp

    la a0, str_p2_standby_mode
    call uart_puts

    # Mostrar PC capturado
    la a0, str_p2_pc_deactivation
    call uart_puts

    la t0, p2_deactivation_pc
    lw a0, 0(t0)
    call uart_print_hex

    la a0, str_newline
    call uart_puts

    j p2_exit

cooling_active_state:
    # Cooling activo, mostrar estado
    call metrics_inc_cooling_time

    la a0, str_p2_cooling_active
    call uart_puts

    mv a0, s0
    call uart_send_temp

    j p2_exit

cooling_standby:
    # Cooling en standby, mostrar estado
    la a0, str_p2_cooling_standby
    call uart_puts

    mv a0, s0
    call uart_send_temp

p2_exit:
    # Restaurar registros y retornar
    lw s3, 12(sp)
    lw s2, 16(sp)
    lw s1, 20(sp)
    lw s0, 24(sp)
    lw ra, 28(sp)
    addi sp, sp, 32
    ret

# ==============================================================================
# p2_is_cooling_active: Getter para estado del enfriamiento
# Retorna: a0 = 1 si cooling activo, 0 si no
# ==============================================================================
p2_is_cooling_active:
    la t0, p2_cooling_active
    lbu a0, 0(t0)
    ret

# ==============================================================================
# Strings de mensajes
# ==============================================================================
.section .rodata
.align 2

str_p2_activated_header:
    .string "\n*** [P2] SISTEMA DE ENFRIAMIENTO ACTIVADO ***\n"

str_p2_temp_exceeded:
    .string "[P2] Temperatura excedio umbral: "

str_p2_deploying:
    .string "[P2] Desplegando tecnicas de gestion termica...\n"

str_p2_pc_activation:
    .string "[P2] PC de activacion: 0x"

str_p2_deactivated_header:
    .string "\n*** [P2] SISTEMA DE ENFRIAMIENTO DESACTIVADO ***\n"

str_p2_temp_normalized:
    .string "[P2] Temperatura normalizada: "

str_p2_standby_mode:
    .string "[P2] Gestion termica en modo espera\n"

str_p2_pc_deactivation:
    .string "[P2] PC de desactivacion: 0x"

str_p2_cooling_active:
    .string "[P2] Enfriamiento activo | Temp: "

str_p2_cooling_standby:
    .string "[P2] Enfriamiento en espera | Temp: "

str_newline:
    .string "\n"
