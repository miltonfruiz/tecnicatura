/* 14. Escribe un programa que solicite al usuario una cadena de caracteres y luego cuente el 
número de vocales que contiene. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char vocales[] = {'a','e','i','o','u','A','E','I','O','U'};
    char cadena[100];
    int contador = 0;

    printf("Ingrese cadena: ");
    fgets(cadena, sizeof(cadena), stdin);

    for (int i = 0; i < strlen(vocales); i++)
    {
        for (int j = 0; j < strlen(cadena); j++)
        {
            if (cadena[j] == vocales[i])
            {
                contador++;
            }
            
        }
        
    }
    printf("\nCantidad de vocales: %d\n\n", contador);

    system("pause");
}