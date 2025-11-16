	.data
	.text
	.globl main
	
main: 
	li $a0, 3 # carrego 3 em a0
	li $a1 , 8 # carrego 8 em a1
	jal max # cchamo a função
	move $a0, $v0
	li $v0, 1
	syscall 
	li $v0, 10
	syscall 
	
max:
	slt $t1, $a0, $a1 # t1 = 1 se a0 < a1
	bne $t1, $zero, else # se t1 != 0, executo o else, ou seja, se a0 > a1 executo o else
	sub $v0, $a0, $a1 # realizo a subtração
	jr $ra # retorno
else:
	sub $v0, $a1, $a0 # subtração
	jr $ra # retorno
