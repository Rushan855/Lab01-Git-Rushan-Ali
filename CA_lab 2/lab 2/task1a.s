

main:
li x22 , 3
li x23 ,  6
    bne x22, x23, else
    add x19, x20 ,x21
    beq x0 ,x0 , exit
else:
    sub x19, x20 , x21
exit: