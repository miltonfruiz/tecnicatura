/* 9. Escriba un programa que escriba la tabla de multiplicar del 1, 2,....,9. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, j, producto;
    producto = 0;

    for ( i = 1; i <= 9; i++)
    {
        printf("Tabla de multiplicar de: %d\n",i);
        for ( j = 0; j <= 9; j++)
        {
            producto = i * j;
            printf("%d x %d = %d\n",i,j,producto);
        }
    }
    
    system("pause");
}