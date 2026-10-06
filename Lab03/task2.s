#Task 2
main:
    li x10, 5           # g = 5
    li x11, 3           # h = 3
    li x12, 2           # i = 2
    li x13, 1           # j = 1
    jal x1, leaf_example  
    addi x11, x10, 0    
    li x10, 1           
    ecall
    j exit           

leaf_example:
    addi sp, sp, -12   
    sw x18, 0(sp)      
    sw x19, 4(sp)      
    sw x20, 8(sp)       

    add x18, x10, x11   # g + h
    add x19, x12, x13   # i + j
    sub x20, x18, x19   # (g+h) - (i+j)

    add x10, x20, x0  

    lw x18, 0(sp)       
    lw x19, 4(sp)       
    lw x20, 8(sp)     
    addi sp, sp, 12   

    jalr x0, 0(x1)      
exit:
end:
    j end              