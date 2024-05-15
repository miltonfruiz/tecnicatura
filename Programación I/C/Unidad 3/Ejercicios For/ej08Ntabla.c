/* 8. Escriba un programa que lea un número n1, y escriba la tabla de multiplicar del 
número. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, n1, producto;

    printf("\nIngrese un numero: ");
    scanf("%d", &n1);

    for ( i = 0; i <= 9; i++)
    {
        producto = n1 * i;
        printf("%d x %d = %d\n" ,n1,i,producto);
    }

    system("pause");
}