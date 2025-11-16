#include <stdio.h>
#include <stdlib.h>

int soma_quadrados(int x, int y) { 
    return (x * x) + (y * y); 
} 

int main(){
    int a = 2;
    int b = 3;
    int resultado = 0;

    resultado = soma_quadrados(a,b);
    printf("Resultado: %d", resultado);

    return 0;
}