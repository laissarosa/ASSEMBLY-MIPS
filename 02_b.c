#include <stdio.h>

int multiplica_espacado(int v[]) { 
    return v[0] * v[4];  
} 

int main(){
    int vetor[5] = {1,2,3,4,5};
    int resultado;

    resultado = multiplica_espacado(vetor);

    printf("Resultado: %d \n", resultado);

    return 0;
}
