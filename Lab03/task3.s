#Task 3
main:
    li x10, 0x200       # base address of array v
    li x11, 2           # k = 2

    li x5, 10           # load 10
    sw x5, 0(x10)       # v[0] = 10
    li x5, 20           # load 20
    sw x5, 4(x10)       # v[1] = 20
    li x5, 30           # load 30
    sw x5, 8(x10)       # v[2] = 30
    li x5, 40           # load 40
    sw x5, 12(x10)      # v[3] = 40

    jal x1, swap        # call swap function
    j exit              # jump to exit
swap:
    slli x5, x11, 2     # offset = k * 4
    add x5, x5, x10     # address of v[k] = base+offset
    lw x6, 0(x5)        # load v[k]
    lw x7, 4(x5)        # load v[k+1]

    sw x7, 0(x5)        # v[k] = v[k+1]
    sw x6, 4(x5)        # v[k+1] = v[k]

    jalr x0, 0(x1)      
exit:
end:
    j end              