#include <stdio.h>
#include <stdlib.h>

void main(){

    char caracter1, caracter2, suma;

    printf("Ingrese el primer caracter: \n");
    scanf(" %c", &caracter1);
    printf("Ingrese el segundo caracter: \n");
    scanf(" %c", &caracter2);

    suma = caracter1 + caracter2;

    printf("La suma de los caracteres es: %c\n", suma);

    system("pause");
}