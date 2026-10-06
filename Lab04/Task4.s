#Task 4 
main:
    li x10, 7        # test with n = 7
    jal x1, fib

    addi x11, x10, 0        # move result to a1
    li x10, 1
    ecall
    j exit

fib:
    addi sp, sp, -12        # reserve 3 words: ra, n, intermediate result
    sw x1, 8(sp)        # save this call's return address
    sw x10, 4(sp)        # save this call's n

    li x5, 1
    bge x5, x10, Base        # if n <= 1, base case (returns n itself)

    addi x10, x10, -1        # argument = n - 1
    jal x1, fib        # fib(n-1)
    sw x10, 0(sp)        # save fib(n-1)'s result before the 2nd call

    lw x10, 4(sp)        # restore this level's n
    addi x10, x10, -2        # argument = n - 2
    jal x1, fib        # fib(n-2)

    lw x6, 0(sp)        # x6 = fib(n-1), saved earlier
    add x10, x10, x6        # fib(n-1) + fib(n-2)

    lw x1, 8(sp)        # restore this level's return address
    addi sp, sp, 12
    jalr x0, 0(x1)

Base:
    lw x1, 8(sp)        # x10 already holds n, unchanged since the top
    addi sp, sp, 12
    jalr x0, 0(x1)

exit:
end:
    j end