strcpy:
    addi sp, sp, -4
    sw   x19, 0(sp)
    add  x19, x0, x0

L1:
    add  x5, x19, x11
    lbu  x6, 0(x5)
    add  x7, x19, x10
    sb   x6, 0(x7)
    beq  x6, x0, L2
    addi x19, x19, 1
    jal  x0, L1

L2:
    lw   x19, 0(sp)
    addi sp, sp, 4
    jalr x0, 0(x1)