/* 13. Imprimir por consola 10 renglones, de manera que se visualice la siguiente salida:
@@@@@@@@@@
@@@@@@@@@
@@@@@@@
... */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, j;

    for ( i = 10; i >= 1; i--)
    {
        for ( j = 0; j < i; j++)
        {
            printf("@");
        }
        printf("\n");
    }
    
    system("pause");
}