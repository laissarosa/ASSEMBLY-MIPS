#include <stdio.h>

int max(int a, int b) { 
if (a > b) 
    return a; 
return b; 
}

int main(){
    int a = 2, b = 5, resultado;

    resultado = max(a,b);
    printf("Maior: %d \n", resultado);
    return 0;
}