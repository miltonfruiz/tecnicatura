// Ejemplo

/*Realizar un programa que calcule la suma de 10 números reales
ingresados por teclado. Informar el resultado. */

#include <stdio.h>
#include <stdlib.h>

void main()
{
    float numeroIngresado;
    float suma = 0;

    for (int x = 1; x <= 10; x++)
{
    printf("Ingrese el nro. %d: \n", x);
    scanf("%f", &numeroIngresado);

    suma = suma + numeroIngresado;
}

    printf("La suma es = %f \n", suma);

    system("pause");
}