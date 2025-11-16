#include <stdio.h>

int valida_primeiro(int v[]) { 
    if (v[0] > 10) 
        return 1; 
    return 0; 
}

int main(){
    int vetor[3] = {11,12,1};
    int validade = valida_primeiro(vetor);
    printf("%d", validade);
    
    return 0;
}