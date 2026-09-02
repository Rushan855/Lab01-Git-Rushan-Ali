.text
.globl main
main:
    li x1,5
    li x0,0
    
    addi x2,x0,0
    addi x1,x2,32
    add x4,x1,x2 
    addi x5,x4,-5 #int d
    sub x6,x1,x5 
    sub x7,x2,x1
    add x8,x6,x7
    add x9,x8,x5 #int e
    add x10,x1,x2
    add x11,x5,x9
    add x12,x10,x11 #e
end:
    j end








