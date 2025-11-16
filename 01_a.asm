        .data
msg:    .asciiz "Resultado: "
        .text
        .globl main
main:
        # coloca os argumentos direto
        li   $a0, 2        # a = 2
        li   $a1, 3        # b = 3
        jal  soma_quadrados
        move $t0, $v0      # salva resultado
        # printf("Resultado: %d", resultado);
        li   $v0, 4
        la   $a0, msg
        syscall
        move $a0, $t0
        li   $v0, 1
        syscall
        # return 0;
        li   $v0, 10
        syscall
soma_quadrados:
        mul   $t1, $a0, $a0   # x*x
        mul   $t2, $a1, $a1   # y*y
        add   $v0, $t1, $t2   # retorno
        jr    $ra
