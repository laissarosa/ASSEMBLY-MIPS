	.data 
vetor: .word 1,2,3,4,5
	.text
	.globl main
	
main:
	la $a2, vetor # carrego o vetor em a2
	jal multiplica_espacado # chamo a função
	move $a0, $v0 # coloco o retorno em a0
	li $v0, 1 # print int
	syscall 
	li $v0, 10 # encerro 
	syscall 
	
multiplica_espacado:
	lw $t1, 0($a2) # carrego a posição 1 do vetor (valor 1)
	lw $t2, 16($a2) # carrego a posição 5 do vetor valor 5)
	mul $v0, $t1, $t2 # 1 * 5
	jr $ra # retorno
	
