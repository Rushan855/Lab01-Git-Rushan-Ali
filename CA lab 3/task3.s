swap:
    slli x6, x11, 2      # x6 = k * 4 (since integers/elements are 4 bytes)
    add  x6, x10, x6     # x6 = &v[k]
    
    lw   x7, 0(x6)       # x7 = v[k]
    lw   x28, 4(x6)      # x28 = v[k+1] (at offset +4 bytes)
    
    sw   x28, 0(x6)      # v[k] = v[k+1]
    sw   x7, 4(x6)       # v[k+1] = temp
    
    jalr x0, 0(x1)