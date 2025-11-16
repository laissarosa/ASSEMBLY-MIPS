	.data 
vetor: .word 1,2
	.text
	.globl main
	
main:
	la $a2, vetor # carrego o vetor em a2
	jal soma_dupla # chamo a função
	move $a0, $v0 # resultado que retornou em v0 eu coloquei em a0
	li $v0, 1 # instrução que imprime inteiro
	syscall 
	li $v0, 10 # encerrar 
	syscall 
	
soma_dupla:
	lw $t1, 0($a2) # coloco em t1 o elemento de posição [0] do vetor
	lw $t2, 4($a2)  # em t2 o de posição [1]
	add $v0, $t1, $t2 # somo ambos
	jr $ra # retorno
	
