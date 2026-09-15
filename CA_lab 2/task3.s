addi x10, x0, 0x200

# First for loop
addi x22, x0, 0

Loop1:
    addi x11, x0, 10
    bge x22, x11, End1

    slli x12, x22, 2
    add x13, x10, x12
    sw x22, 0(x13)

    addi x22, x22, 1
    jal x0, Loop1

End1:

# Second for loop
addi x22, x0, 0

Loop2:
    addi x11, x0, 10
    bge x22, x11, End2

    slli x12, x22, 2
    add x13, x10, x12
    lw x14, 0(x13)

    add x23, x23, x14

    addi x22, x22, 1
    jal x0, Loop2
End2: