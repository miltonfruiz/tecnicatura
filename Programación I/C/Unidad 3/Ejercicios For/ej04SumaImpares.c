/* 4. Imprimir la suma de los números impares que se encuentran entre los números 1 y 10. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, total;
    total = 0;

    for ( i = 1; i <= 10; i++)
    {
        if (i % 2 == 1)
        {
            total = total + i;
        }
    }
    printf("La suma es: %i\n", total);

    system("pause");
}