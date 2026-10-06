#Task 3
main:
    li x10, 0x10000000      
    li x11, 5               # Len = 5

    # seed a[] = [5, 3, 8, 1, 9]
    li x5, 5
    sw x5, 0(x10)
    li x5, 3
    sw x5, 4(x10)
    li x5, 8
    sw x5, 8(x10)
    li x5, 1
    sw x5, 12(x10)
    li x5, 9
    sw x5, 16(x10)

    jal x1, bubble
    j exit

bubble:
    beq x10, x0, Done        # if a == NULL, return
    beq x11, x0, Done        # if Len == 0, return

    li x28, 0                # i = 0
OuterLoop:
    bge x28, x11, Done       # if i >= len, done
    add x29, x28, x0         # j = i
InnerLoop:
    bge x29, x11, InnerDone  # if j >= len, end inner loop
    slli x5, x28, 2          # offset for a[i]
    add x5, x5, x10          # address of a[i]
    slli x6, x29, 2          # offset for a[j]
    add x6, x6, x10          # address of a[j]
    lw x7, 0(x5)             # a[i]
    lw x30, 0(x6)            # a[j]
    blt x7, x30, DoSwap      # if a[i] < a[j], swap
    j SkipSwap
DoSwap:
    sw x30, 0(x5)            # a[i] = a[j]
    sw x7, 0(x6)             # a[j] = old a[i]
SkipSwap:
    addi x29, x29, 1
    j InnerLoop
InnerDone:
    addi x28, x28, 1
    j OuterLoop
Done:
    jalr x0, 0(x1)

exit:
end:
    j end