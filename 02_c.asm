	.data 
vetor: .word 1,2,3
	.text
	.globl main
	
main:
	la $a0, vetor #carrego o vetor
	li $a1, 2 # a1 tem 2
	jal soma_n # chamo função
	move $a0, $v0 # movo o resultado da função para a0
	li $v0, 1
	syscall 
	li $v0, 10
	syscall 
	
soma_n:
	move $v0, $zero # corresponde a soma = 0 no programa em c
	move $t0, $zero # aqui é i = 0
loop: 
	slt $t1, $t0, $a1 # n < i, cond que não quero
	beq $t1, $zero, exit # se t1 == 0, saio do loop
	sll $t2, $t0, 2 # desloco 4 posições (i * 4)
	add $t2, $t2, $a0 # nova posição "livre" do vetor
	lw $t3, 0($t2)
	add $v0, $v0, $t3
	addi $t0, $t0, 1 # i++
	j loop # volto pto inicio do loop
exit:
	jr $ra # retorno da função
	
