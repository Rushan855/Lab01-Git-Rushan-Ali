.data
D: .space 400          # Reserves 400 bytes of memory starting at 0x10010000

.text
li x5,2
li x6, 2
la x10, D

# i = 0
addi x7, x0, 0

LoopI:
    bge x7, x5, End # if i >= a, finish

    # j = 0
    addi x29, x0, 0

LoopJ:
    bge x29, x6, NextI # if j >= b, go to next i

    # D[4*j]
    slli x28, x29, 4 # x28 = j * 16
    add x27, x10, x28 # x27 = address of D[4*j]

    # i + j
    add x26, x7, x29 # x26 = i + j

    sw x26, 0(x27) # D[4*j] = i + j

    # j++
    addi x29, x29, 1
    jal x0, LoopJ

NextI:
    # i++
    addi x7, x7, 1
    jal x0, LoopI

End: