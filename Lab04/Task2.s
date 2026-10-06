#Task 2
main:
    li x10, 5        # num = 5 (test value)
    jal x1, fact

    addi x11, x10, 0        # move result to x11
    li x10, 1
    ecall
    j exit

fact:
    addi sp, sp, -8
    sw x1, 4(sp)        # save return address
    sw x10, 0(sp)        # save num

    li x6, 1
    bge x6, x10, Base        # if 1 >= num (num <= 1), base case

    addi x10, x10, -1        # argument = num - 1
    jal x1, fact        # recursive call

    add x7, x10, x0        # x7 = fact(num-1)
    lw x10, 0(sp)        # restore this level's num
    lw x1, 4(sp)        # restore this level's return address
    addi sp, sp, 8
    add x10, x10, x7        # num + fact(num-1)
    jalr x0, 0(x1)

Base:
    li x10, 1
    lw x1, 4(sp)        # still must restore, even in base case
    addi sp, sp, 8
    jalr x0, 0(x1)

exit:
end:
    j end