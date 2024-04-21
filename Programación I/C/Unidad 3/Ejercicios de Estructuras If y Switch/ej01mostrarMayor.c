// 1- Ingresar por teclado dos números, determinar cuál es el mayor y visualizarlo en pantalla.

#include <stdio.h>
#include <stdlib.h>

void main() {
    int num1, num2;

    printf("Ingrese el primer numero: \n");
    scanf("%i", &num1);
    printf("Ingrese el segundo numero: \n");
    scanf("%i", &num2);

    if (num1 > num2)
    {
        printf("El primer numero ingresado es mayor: %i\n",num1);
    } else {
        printf("El segundo numero ingresado es mayor: %i\n",num2);
    }

    system("pause");
}