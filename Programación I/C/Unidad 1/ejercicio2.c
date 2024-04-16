#include <stdio.h>

int main(){
    int suma = 0, valor1 = 0, valor2 = 0 , valor3 = 0;

    printf("Ingrese el primer valor: ");
    scanf("%d", &valor1);
    printf("Ingrese el segundo valor: ");
    scanf("%d", &valor2);
    printf("Ingrese el tercer valor: ");
    scanf("%d", &valor3);

    suma = valor1 + valor2 + valor3;

    printf("La suma de %d + %d + %d es %d\n", valor1, valor2, valor3, suma);
}