
                .data
msg:    .asciiz "Resultado: "
        .text
        .globl main
main:
	# iniicalizar as variáveis
	li $a1, 1 # int a = 1
	li $a2, 2
	li $a3, 0
	jal media3
	move $t0, $v0 # coloco o rsultado em to
	# printf ("resultado: ");
	li $v0, 4 # p/ imprimir string
	la $a0, msg
	syscall
	move $a0, $t0
	li $v0, 1 # p/ imprimir int
	syscall 
	li $v0, 10
	syscall 
media3:
	add $t1, $a1, $a2
	add $t1, $t1, $a3
	li $t2, 3
	div $t1, $t2 #t1/3
	mflo $v0 #resultado em v0
	jr  $ra
	 
	
	
