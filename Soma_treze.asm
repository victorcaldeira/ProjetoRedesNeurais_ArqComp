.data
    Valor_peso: .asciiz "Valor do peso é "
    Proxima_linha: .asciiz "\n"
    Taxa: .asciiz "Taxa de aprendizado é "
    Repeticao: .asciiz "Repetições são "
    Soma13: .asciiz " + 13 é "
    
.text
    li $v0,4
    la $a0,Valor_peso
    syscall
    
    li $v0,43
    syscall
    
    mov.s $f1,$f0
    
    li $v0,2
    mov.s $f12,$f1
    syscall
    
    li $v0,4
    la $a0,Proxima_linha
    syscall
    
    li $v0,4
    la $a0,Taxa
    syscall
    
    li $v0,6
    syscall
    
    mov.s $f3,$f0
    
    li $v0,4
    la $a0,Repeticao
    syscall
    
    li $v0,5
    syscall
    
    move $s1,$v0
    
    addi $s2, $zero, 13
    mtc1 $s2, $f12
    cvt.s.w $f12, $f12
    mov.s $f5,$f12
    
    li $s0, 1
    addi $s1, $s1, 1	
    JUMValor_peso:
    slt $t0, $s0, $s1
    beq $t0, $zero, FIM_JUMValor_peso
    
    mtc1 $s0, $f12
    cvt.s.w $f12, $f12
    
    mul.s $f4, $f1, $f12
    add.s $f6, $f4, $f5
    add.s $f7, $f12, $f5
    
    sub.s $f8, $f7, $f6
    
    mul.s $f9, $f3, $f12
    mul.s $f9, $f9, $f8
    add.s $f1, $f1, $f9
    
    li $v0,4
    la $a0,Valor_peso
    syscall
        
    li $v0,2
    mov.s $f12,$f1
    syscall    
    
    li $v0,4
    la $a0,Proxima_linha
    syscall     
    
    addi $s0, $s0, 1
    j JUMValor_peso
        
    FIM_JUMValor_peso:
    
    li $v0,4
    la $a0,Proxima_linha
    syscall
    
    li $s0, 1	
    JUMP2:
    slt $t0, $s0, $s1
    beq $t0, $zero, FIM_JUMP2
    
    mtc1 $s0, $f12
    cvt.s.w $f12, $f12
    
    mul.s $f4, $f1, $f12
    add.s $f6, $f4, $f5
            
    li $v0,1
    move $a0,$s0
    syscall   
    
    li $v0,4
    la $a0,Soma13
    syscall
    
    li $v0,2
    mov.s $f12,$f6
    syscall      
    
    li $v0,4
    la $a0,Proxima_linha
    syscall
    
    addi $s0, $s0, 1
    j JUMP2
        
    FIM_JUMP2:
    