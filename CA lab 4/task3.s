bubble:
    // Null pointer and zero-length check
    beq  x10, x0, done       // if (a == NULL) return
    beq  x11, x0, done       // if (len == 0) return

    // Outer loop setup: i = 0
    addi x5, x0, 0           // x5 = i = 0

outer_loop:
    bge  x5, x11, done       // if (i >= len) exit outer loop

    // Inner loop setup: j = i
    addi x6, x5, 0           // x6 = j = i

inner_loop:
    bge  x6, x11, next_outer // if (j >= len) exit inner loop

    // Load a[i]
    slli x7, x5, 2           // x7 = offset i = i * 4
    add  x7, x10, x7         // x7 = &a[i]
    lw   x29, 0(x7)          // x29 = a[i]

    // Load a[j]
    slli x28, x6, 2          // x28 = offset j = j * 4
    add  x28, x10, x28       // x28 = &a[j]
    lw   x30, 0(x28)         // x30 = a[j]

    // Condition check: if (a[i] < a[j])
    bge  x29, x30, no_swap   // if (a[i] >= a[j]) skip swap

    // Swap elements
    sw   x30, 0(x7)          // a[i] = a[j]
    sw   x29, 0(x28)         // a[j] = temp (a[i])

no_swap:
    addi x6, x6, 1           // j++
    jal  x0, inner_loop      // jump to next inner iteration

next_outer:
    addi x5, x5, 1           // i++
    jal  x0, outer_loop      // jump to next outer iteration

done:
    jalr x0, 0(x1)           // return to caller