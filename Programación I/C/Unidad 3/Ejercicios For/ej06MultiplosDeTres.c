/* 6. Suma de los 10 primeros números múltiplos de tres. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, total;
    total = 0;

    for (i = 1; i <= 9; i++)
    {
        total = total + (3*i);
    }
    printf("La suma es: %i\n",total);

    system("pause");
}