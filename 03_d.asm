	.data
vetor: .word 11, 12, 1
	.text
	.globl main
main: 
	la $a0, vetor # carrego o vetor em a0
	jal valida_primeiro # chamo a função
	move $a0, $v0 # coloco o retorno da função em a0
	li $v0, 1 # imprimo o resultado
	syscall 
	li $v0, 10 # encerro
	syscall 
valida_primeiro:
	lw $t2, 0($a0) # carrego a posição 0 do vetor
	slti $t1, $t2, 10 # verifico de t2 < 10, se sim, t1 = 1 e caso contrário. t1 = 0
	bne $t1, $zero, else # se t1 != 0, else
	li $t3, 1
	move $v0, $t3 # coloco 1 no retorno
	jr $ra # retorno 1, pois t2 > 10
else:
	move $v0, $zero
	jr $ra # retorno 0 se t2 < 10
