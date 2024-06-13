/* 11. Escribe un programa que pida tres cadenas al usuario y muestre sus longitudes (número de letras). */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define CAD 3
#define LONG 50

void main(){
    char cadenas[CAD][LONG];
    for (int i = 0; i < CAD; i++)
    {
        printf("Ingrese cadena %d: ",i+1);
        fgets(cadenas[i], sizeof(cadenas[i]), stdin);
        cadenas[i][strcspn(cadenas[i], "\n")] = '\0';
    }
    for (int i = 0; i < CAD; i++)
    {
        printf("Longitud cadena %d: %d\n", i+1, strlen(cadenas[i]));
    }
    system("pause");
}