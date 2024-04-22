/* 2- Ingresar tres valores, sumarlos e imprimir esa suma. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int valor1, valor2, valor3, suma;
    suma = 0;

    printf("Ingrese el primer valor: \n");
    scanf("%i", &valor1);
    printf("Ingrese el segundo valor: \n");
    scanf("%i", &valor2);
    printf("Ingrese el tercer valor: \n");
    scanf("%i", &valor3);

    suma = valor1 + valor2 + valor3;

    printf("La suma de %d + %d + %d es %d\n", valor1, valor2, valor3, suma);
}