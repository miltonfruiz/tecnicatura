/* 1. Imprimir los números del 1 al 10 uno abajo del otro. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i;

    for ( i = 1; i <= 10; i++)
    {
        printf("Numero: %i\n", i);
    }
    
    system("pause");
}