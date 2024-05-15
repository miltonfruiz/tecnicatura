/* 7. Diseñe un algoritmo que sume los 20 primeros números impares. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, suma;
    suma = 0;

    for ( i = 1; i <= 40; i++)
    {
        if (i % 2 == 1)
        {
            suma += i;
        }
        
    }
    printf("\nLa suma es: %d\n",suma);

    system("pause");
}