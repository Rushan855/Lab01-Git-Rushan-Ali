.text
.globl main
main:
    li x20, 3
    li x21, 1
    li x22, 2
    li x23, 1

    add x5 , x20 , x21 #// x5 = g + h
    add x6 , x22 , x23# // x6 = i + j
    sub x19 , x5 , x6 #// f = (g + h) - (i + j)
end:
    j end 
