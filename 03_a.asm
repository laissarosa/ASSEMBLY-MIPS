	.data
	.text
	.globl main
	
main: 
	li $a0, -2 # carrego a0 com -2
	jal abs_ # chamo a função
	move $a0, $v0 # movo o retorno da função para a0
	li $v0, 1 # imprimi int
	syscall 
	li $v0, 10 # encerra
	syscall 
	
abs_:
	slti $t1, $a0, 0 # x < 0 ( t1 = 1 se x < 0 ou recebe 0 se x > 0)
	beq $t1, $zero, else # se t1  == 1, pulo para o else. O beq verifica se t1 != 0, oque significa t1 == 1
	li $t2, -1 # em t2 tem -2
	mul $v0, $a0, $t2 # multiplico por -1
	jr $ra # retorno o valor
else:
	move $v0, $a0 # caso t1 == 1, apenas movo o valor do paramêtro para a variavel de retorno
	jr $ra # retorno
