#include <stdio.h>

int diferenca_pos(int a, int b) { 
if (a > b) 
    return a - b; 
else 
    return b - a; 
} 

int main(){
    int a = 3, b = 8, res;

    res = diferenca_pos(a, b);
    printf ("Diferenca: %d \n", res);
    return 0;
}