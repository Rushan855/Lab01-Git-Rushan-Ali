fact:
    addi x6, x0, 1       # acc = 1

L1:
    bge  x0, x10, L2     # if n <= 0, go to L2
    mul  x6, x6, x10     # acc = acc * n
    addi x10, x10, -1    # n = n - 1
    jal  x0, L1         # repeat

L2:
    addi x10, x6, 0      # return acc in x10 (a0)
    jalr x0, 0(x1)      # return
