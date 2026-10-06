
main:
    li x05, 4          
    li x06, 3          
    li x10, 0x300      

    li x07, 0           
OuterLoop:
    bge x07, x05, OuterEnd
    li x29, 0           
InnerLoop:
    bge x29, x06, InnerEnd
    slli x28, x29, 4    
    add x28, x28, x10   
    add x27, x07, x29   
    sw x27, 0(x28)      
    addi x29, x29, 1
    beq x0, x0, InnerLoop
InnerEnd:
    addi x07, x07, 1
    beq x0, x0, OuterLoop
OuterEnd:

end:
    j end
