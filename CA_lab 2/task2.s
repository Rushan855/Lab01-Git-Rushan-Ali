main:
li t0 , 4
    addi t4, x0, 1
    beq t0, t4, case1

    addi t4, x0, 2
    beq t0, t4, case2

    addi t4, x0, 3
    beq t0, t4, case3

    addi t4, x0, 4
    beq t0, t4, case4

    jal x0, default

case1:
    add t3, t1, t2 # a = b + c
    jal x0, end

case2:
    sub t3, t1, t2 # a = b - c
    jal x0, end

case3:
    add t3, t1, t1 # a = b * 2
    jal x0, end

case4:
    srli t3, t1, 1 # a = b / 2
    jal x0, end

default:
    add t3, x0, x0 # a = 0

end: