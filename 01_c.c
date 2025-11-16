#include <stdio.h>

int dobro_sub(int a, int b) { 
    return 2 * (a - b); 
} 

int main (){
    int a = 0, b = 5, resultado;
    resultado = dobro_sub(a,b);
    printf("Resultado: %d", resultado);   
    return 0;
}