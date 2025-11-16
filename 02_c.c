#include <stdio.h>

int soma_n(int v[], int n) { 
int soma = 0; 
for (int i = 0; i < n; i++) 
    soma += v[i]; 
return soma; 
}

int main (){
    int vetor[3] = {1,2,3};
    int soma = 0, n = 2;

    soma = soma_n(vetor, n);
    printf("Resultado da soma: %d", soma);
    return 0;

}