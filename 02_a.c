#include <stdio.h>

int soma_dupla(int v[]) { 
    return v[0] + v[1]; 
}

int main(){
    int vetor[2] = {1,2};
    int resultado;

    resultado = soma_dupla(vetor);
    printf("Resultado: %d", resultado);

    return 0;
}