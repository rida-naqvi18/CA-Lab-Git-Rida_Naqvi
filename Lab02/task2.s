main: 
    li x22, 9
    li x23, 14
    li x20, 1

    li x24, 1
    beq x20,x24, Case1
    li x24, 2
    beq x20, x24, Case2
    li x24, 3
    beq x20,x24, Case3 
    li x24, 4
    beq x20, x23, Case4
    beq x0, x0, Default

Case1:
    add x21, x22, x23
    beq x0, x0, Exit
Case2:
    sub x21, x22, x23
    beq x0, x0, Exit
Case3:
    slli x21, x22, 1
    beq x0, x0, Exit
Case4:
    srli x21, x22, 1
    beq x0, x0, Exit
Default:
    add x21, x0, x0
Exit:
end:
    j end 
