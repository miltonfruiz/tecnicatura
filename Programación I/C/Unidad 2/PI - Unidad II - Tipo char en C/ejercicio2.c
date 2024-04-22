/* 2- Pedir al usuario que ingrese dos caracteres y luego imprimir la suma de sus códigos ASCII */

#include <stdio.h>
#include <stdlib.h>

void main(){

    char caracter1, caracter2;
    int suma;

    printf("Ingrese el primer caracter: ");
    scanf(" %c", &caracter1);
    printf("Ingrese el segundo caracter: ");
    scanf(" %c", &caracter2);

    suma = caracter1 + caracter2;

    printf("La suma de los caracteres es: %d\n", suma);

    system("pause");
}