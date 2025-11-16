#include <stdio.h>

int abs(int x) { 
if (x < 0) 
    return -x; 
return x; 
}

int main(){
    int a = -2, soma;

    soma = abs(a);
    printf("Resultado: %d", soma);
    return 0;
}