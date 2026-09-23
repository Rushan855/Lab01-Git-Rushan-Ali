 fact:
2 addi sp , sp , -8 // adjust stack for 2 items
3 sw x1 , 4(sp) // save return address
4 sw x10 , 0(sp) // save argument n
5
6 addi x5 , x10 , -1 // x5 = n - 1
7 bge x5 , x0 , L1 // if (n - 1) >= 0, go to L1
8
9 addi x10 , x0 , 1 // return 1
10 addi sp , sp , 8 // pop stack
11 jalr x0 , 0(x1) // return
12
13 L1:
14 addi x10 , x10 , -1 // argument = n - 1
15 jal x1 , fact // recursive call
16
17 addi x6 , x10 , 0 // save result of fact(n-1)
18 lw x10 , 0(sp) // restore original n
19 lw x1 , 4(sp) // restore return address
20 addi sp , sp , 8 // pop stack
21
22 mul x10 , x10 , x6 // n * fact(n-1)
23 jalr x0 , 0(x1) // return
