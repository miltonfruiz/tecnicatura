/* 15. Escribe un programa que solicite al usuario una cadena de caracteres y luego imprima la 
cadena invertida. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char cadena[50];

    printf("Ingrese cadena: ");
    scanf("%s", &cadena);

    for (int i = strlen(cadena); i >=0 ; i--)
    {
        printf("%c", cadena[i]);
        //putc(cadena[i],stdout);

    }
    printf("\n");

    system("pause");
}