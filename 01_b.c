#include <stdio.h>

int media3(int a, int b, int c) { 
    return (a + b + c) / 3; 
}

int main(){
    int a = 1, b = 2, c = 0, resultado = 0;
    resultado = media3(a,b,c);
    printf("Resultado da media por 3: %d \n", resultado);

    return 0;
}