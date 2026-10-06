main:
li x10, 5        # n = 5 (test value)
jal x1, fact_iter

addi x11, x10, 0        # move result to a1
li x10, 1
ecall
j exit
fact_iter:

li x6, 1        # acc = 1
Loop:

bge x0, x10, Done        # if 0 >= n (n <= 0), exit
mul x6, x6, x10        # acc = acc * n
addi x10, x10, -1        # n = n - 1
j Loop
Done:

add x10, x6, x0        # return acc in a0
jalr x0, 0(x1)

exit:
end:
j end