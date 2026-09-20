leaf_example:
    addi sp, sp, -16
    sw   x20, 8(sp)
    sw   x19, 4(sp)
    sw   x18, 0(sp)
    
    add  x18, x10, x11
    add  x19, x12, x13
    sub  x20, x18, x19
    
    add  x10, x20, x0
    
    lw   x18, 0(sp)
    lw   x19, 4(sp)
    lw   x20, 8(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)         