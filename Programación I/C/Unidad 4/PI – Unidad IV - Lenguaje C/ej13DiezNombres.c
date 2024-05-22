/* 13. Ingresar por consola 10 nombres de alumnos en un array y sus apellidos en otro,concatenar
de la forma "nombre apellido" para cada uno, y mostrar por consola. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TOTAL 10
#define LONG 100

void main(){
    char nombre[TOTAL][LONG];
    char apellido[TOTAL][LONG];
    char concatenar[TOTAL][LONG];

    for (int i = 0; i < TOTAL; i++)
    {
        printf("Ingrese nombre: ");
        scanf("%s", nombre[i]);
    }
    for (int j = 0; j < TOTAL; j++)
    {
        printf("Ingrese apellido: ");
        scanf("%s", apellido[j]);
    }

    for (int k = 0; k < TOTAL; k++)
    {
        strcat(concatenar[k], nombre[k]);
        strcat(concatenar[k], " ");
        strcat(concatenar[k], apellido[k]);
        printf("%s\n", &concatenar[k]);
    }

    system("pause");
}