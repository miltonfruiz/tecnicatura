#include <stdio.h>

int main(){

    int suma = 0, valor1 = 0, valor2 = 0;

    printf("Ingrese el primer valor: ");
    scanf("%d", &valor1);
    printf("Ingrese el segundo valor: ");
    scanf("%d", &valor2);
    suma = valor1 + valor2;

    printf("La suma es %d\n", suma);
}