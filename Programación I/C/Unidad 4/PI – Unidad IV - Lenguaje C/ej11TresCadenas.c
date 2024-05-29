/* 11. Escribe un programa que pida tres cadenas al usuario y muestre sus longitudes (número de letras). */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char cadenas[3][50];

    for (int i = 0; i < 3; i++)
    {
        printf("Ingrese cadena %d: ",i+1);
        fgets(cadenas[i], sizeof(cadenas[i]), stdin);
        cadenas[i][strcspn(cadenas[i], "\n")] = '\0';

    }

    for (int i = 0; i < 3; i++)
    {
        printf("Longitud cadena %d: %d\n", i+1, strlen(cadenas[i]));
    }

    system("pause");
}