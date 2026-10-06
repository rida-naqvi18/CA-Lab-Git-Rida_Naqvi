main:
    li x25, 0x200
    li x22, 0         
Loop1:
    li x24, 10
    bge x22, x24, End1
    slli x26, x22, 2
    add x27, x25, x26
    sw x22, 0(x27)
    addi x22, x22, 1
    beq x0, x0, Loop1
End1:
    li x22, 0
    li x23, 0
Loop2:
    li x24, 10
    bge x22, x24, End2
    slli x26, x22, 2
    add x27, x25, x26
    lw x28, 0(x27)
    add x23, x23, x28  
    addi x22, x22, 1   
    beq x0, x0, Loop2
End2:
end:
    j end