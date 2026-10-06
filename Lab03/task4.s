#Task 4
main:
    li x10, 0x100       # base address of x[]
    li x11, 0x200       # base address of y[]
    li x5, 'h'          # load 'h'
    sb x5, 0(x11)       # y[0] = 'h'
    li x5, 'i'          # load 'i'
    sb x5, 1(x11)       # y[1] = 'i'
    sb x0, 2(x11)       # y[2] = '\0'(null terminator)
    jal x1, strcpy      # call strcpy function
    j exit              # jump to exit
strcpy:
    addi sp, sp, -4     # allocate stack space
    sw x19, 0(sp)       # save x19

    li x19, 0           # i = 0

Loop:
    add x5, x11, x19    # address of y[i]
    lb x6, 0(x5)        # x6 = y[i]
    add x7, x10, x19    # address of x[i]
    sb x6, 0(x7)        # x[i] = y[i]
    beq x6, x0, Done    # if y[i] == '\0,
    addi x19, x19, 1    # i++
    beq x0, x0, Loop    
Done:
    lw x19, 0(sp)       
    addi sp, sp, 4      
    jalr x0, 0(x1)      
exit:
end:
    j end               