.data
vet: .word 1,2,3,5,6
.text
.globl main
main:
    la $a0, vet # carrego o vetor em a0
    li $a1, 4 # 4 me a1
    jal multiplica_ate_n # função
    move $a0, $v0 # colooc o retorno da função em a0
    li $v0, 1 #para imprimir esse retono
    syscall
    li $v0, 10 # para encerrar
    syscall
multiplica_ate_n: # execução da função
    li $t0, 0 # t0 = 0
    li $t1, 1 # t1 = 1
loop:
    bge $t0, $a1, fim 
    sll $t2, $t0, 2 # desloco 2^2 posições
    add $t3, $a0, $t2
    lw $t4, 0($t3) #nova posição 
    mul $t1, $t1, $t4 # realizo a multiplicação
    addi $t0, $t0, 1 # i++
    j loop
fim:
    move $v0, $t1
    jr $ra
