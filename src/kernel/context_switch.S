# context_switch.S - Context switching en Assembly RISC-V RV32I
# Guarda y restaura el estado completo del procesador

.section .text
.global context_save
.global context_restore
.global context_switch

# void context_save(pcb_t* pcb)
# Guarda el contexto actual en el PCB
context_save:
    # a0 contiene el puntero al PCB

    # Guardar registros generales (x0-x31)
    sw x1,  4(a0)   # ra (return address)
    sw x2,  8(a0)   # sp (stack pointer)
    sw x3,  12(a0)  # gp
    sw x4,  16(a0)  # tp
    sw x5,  20(a0)  # t0
    sw x6,  24(a0)  # t1
    sw x7,  28(a0)  # t2
    sw x8,  32(a0)  # s0/fp
    sw x9,  36(a0)  # s1
    sw x10, 40(a0)  # a0 (este mismo registro)
    sw x11, 44(a0)  # a1
    sw x12, 48(a0)  # a2
    sw x13, 52(a0)  # a3
    sw x14, 56(a0)  # a4
    sw x15, 60(a0)  # a5
    sw x16, 64(a0)  # a6
    sw x17, 68(a0)  # a7
    sw x18, 72(a0)  # s2
    sw x19, 76(a0)  # s3
    sw x20, 80(a0)  # s4
    sw x21, 84(a0)  # s5
    sw x22, 88(a0)  # s6
    sw x23, 92(a0)  # s7
    sw x24, 96(a0)  # s8
    sw x25, 100(a0) # s9
    sw x26, 104(a0) # s10
    sw x27, 108(a0) # s11
    sw x28, 112(a0) # t3
    sw x29, 116(a0) # t4
    sw x30, 120(a0) # t5
    sw x31, 124(a0) # t6

    # Guardar PC (mepc en modo máquina)
    csrr t0, mepc
    sw t0, 0(a0)

    ret

# void context_restore(pcb_t* pcb)
# Restaura el contexto desde el PCB
context_restore:
    # a0 contiene el puntero al PCB

    # Restaurar PC
    lw t0, 0(a0)
    csrw mepc, t0

    # Restaurar registros generales
    lw x1,  4(a0)   # ra
    lw x2,  8(a0)   # sp
    lw x3,  12(a0)  # gp
    lw x4,  16(a0)  # tp
    lw x5,  20(a0)  # t0
    lw x6,  24(a0)  # t1
    lw x7,  28(a0)  # t2
    lw x8,  32(a0)  # s0/fp
    lw x9,  36(a0)  # s1
    # a0 se restaura al final
    lw x11, 44(a0)  # a1
    lw x12, 48(a0)  # a2
    lw x13, 52(a0)  # a3
    lw x14, 56(a0)  # a4
    lw x15, 60(a0)  # a5
    lw x16, 64(a0)  # a6
    lw x17, 68(a0)  # a7
    lw x18, 72(a0)  # s2
    lw x19, 76(a0)  # s3
    lw x20, 80(a0)  # s4
    lw x21, 84(a0)  # s5
    lw x22, 88(a0)  # s6
    lw x23, 92(a0)  # s7
    lw x24, 96(a0)  # s8
    lw x25, 100(a0) # s9
    lw x26, 104(a0) # s10
    lw x27, 108(a0) # s11
    lw x28, 112(a0) # t3
    lw x29, 116(a0) # t4
    lw x30, 120(a0) # t5
    lw x31, 124(a0) # t6

    # Restaurar a0 al final
    lw x10, 40(a0)  # a0

    ret

# void context_switch(pcb_t* old_pcb, pcb_t* new_pcb)
# Cambia de un proceso a otro
context_switch:
    # a0 = old_pcb, a1 = new_pcb

    # Guardar contexto del proceso actual
    beq a0, zero, skip_save
    call context_save

skip_save:
    # Restaurar contexto del nuevo proceso
    mv a0, a1
    call context_restore

    # Retornar al nuevo proceso
    mret
