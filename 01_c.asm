	.data
	.text 
	.globl main
	
main:
	li $a0, 0 # carrego a0 com 0
	li $a1, 5 # a1 com 5
	jal dobro_sub # chamo a função
	move $a0, $v0# p/ imprimir tem que estar em A e não em V
	li $v0, 1 #print inteiro
	syscall 
	li $v0, 10 #encerrar
	syscall 
dobro_sub:
	sub $v0, $a0, $a1
	sll $v0, $v0, 1
	jr $ra
	
	
