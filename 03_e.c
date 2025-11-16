#include <stdio.h>

int conta_pares(int v[], int n) { 
    int cont = 0; 
    for (int i = 0; i < n; i++) 
        if (v[i] % 2 == 0) 
            cont++; 
    return cont; 
}

int main(){
    int vetor[3] = {2,4,7}, n = 3;
    int resultado = conta_pares(vetor, n);
    printf("contagem: %d", resultado);
    return 0;
}