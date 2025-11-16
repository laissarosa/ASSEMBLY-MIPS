	.data
vetor: .word 2, 4, 7
	.text
	.globl main
main:
    la $a0, vetor  # carrego o vetor em a0
    li $a1, 3      # carrego 3 em a1
    jal conta_pares  #executo a função
    move $a0, $v0 # coloco o resultado em a0
    li $v0, 1 # imprimmo o resultado
    syscall
    li $v0, 10 # encerro
    syscall
conta_pares:  li $t1, 0      # corresponde a cont = 0 em c
   	li $t0, 0 # i = 0      
loop: slt $t2, $t0, $a1   # verifico a condição: t2 = 1 se i < a1
    beq $t2, $zero, fim  # se i > a1, vou para o fim
    sll $t3, $t0, 2 # desloco o tamano de 1 int (4)
    add $t4, $a0, $t3  # calculo a "nova posição" 
    lw  $t5, 0($t4) #carrego a nova posição
    andi $t6, $t5, 1
    bne  $t6, $zero, next
    addi $t1, $t1, 1  # cont++ 
next:
    addi $t0, $t0, 1 #i++
    j loop #continuo o loop
fim:
    move $v0, $t1    
    jr $ra # retorno 
