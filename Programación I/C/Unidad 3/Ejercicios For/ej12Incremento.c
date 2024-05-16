/* 12. Imprimir por consola 10 renglones, de manera que se visualice la siguiente salida: 
@
@@
@@@
... */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define SIZE 10

void main(){
    int i;
    char arrobas[SIZE] = "";

    for ( i = 1; i <= 10; i++)
    {
        strcat(arrobas, "@");
        printf("%s\n", arrobas);
    }
    
    system("pause");
}