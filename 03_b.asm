	.data
	.text
	.globl main
	
main: 
	li $a0, 2 # carrego 2 em a0
	li $a1 , 5 # e em a1
	jal max # chamo a função
	move $a0, $v0 # coloco o resultado em a0
	li $v0, 1 # imprimo o resultado
	syscall 
	li $v0, 10 # encerro 
	syscall 
	
max:	slt $t1, $a0, $a1 # t1 = 1 se a0 < a1
	bne $t1, $zero, else # se t1 != 0, pulo p/ o else, ou seja, executo a proxima parte apenas se a0 > a1
	move $v0, $a0 # preparo o retorno da função
	jr $ra # retorno
else:
	move $v0, $a1 
	jr $ra
