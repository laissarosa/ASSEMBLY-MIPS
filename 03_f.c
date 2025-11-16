#include <stdio.h>

int multiplica_ate_n(int v[], int n) { 
    int res = 1, i = 0; 
    while (i < n) { 
        res *= v[i]; 
        i++; 
} 
return res; 
}

int main(){
    int vet[5] = {1,2,3,5,6}, n =4;
    int res = multiplica_ate_n(vet, n);
    printf("%d", res);

    return 0;
}