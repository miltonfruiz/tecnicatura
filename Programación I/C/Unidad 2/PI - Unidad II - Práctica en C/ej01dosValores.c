/* 1- Ingresar dos valores enteros, sumarlos e imprimir esta suma. */

#include <stdio.h>
#include <stdlib.h>

void main() {
    int val1, val2, suma;
    suma = 0;

    printf("Ingrese el primer valor: ");
    scanf("%i", &val1);
    printf("Ingrese el segundo valor: ");
    scanf("%i", &val2);

    suma = val1 + val2;
    printf("La suma es: %i\n", suma);

    system("pause");
}