/* 6- Ingresar dos valores, calcular su suma, su producto y la resta del 1ro menos el 2do 
valor ingresado, imprimir los resultados */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int valor1, valor2, suma, producto, resta;
    suma = 0, producto = 0, resta = 0;

    printf("Ingrese el primer valor: ");
    scanf("%i", &valor1);
    printf("Ingrese el segundo valor: ");
    scanf("%i", &valor2);

    suma = valor1 + valor2;
    producto = valor1 * valor2;
    resta = valor1 - valor2;

    printf("La suma es: %i\n", suma);
    printf("El producto es: %i\n", producto);
    printf("La resta es: %i\n", resta);

    system("pause");
}