
main:
    addi x10, x0, 12    # x10 = 12
    addi x11, x0, 12    # x11 = 12
    jal x1, sum         # call sum

    addi x11, x10, 0    # save result in x11
    li x10, 1           #to print
    ecall
    j exit

sum:
    add x10, x11, x10   # x10 = x11 + x10
    jalr x0, 0(x1)      # return

exit:
end:
    j end               