#include <stdio.h>  //me permite hacer uso de la funcion printf y scanf
#include <stdlib.h> //me permite hacer la llamada a la función system

// realiza un programa que pida al usuario ingresar dos valores enteros, sumarlos y mostrar el resultado

int main()
{
    // int numero1, numero2;

    int numero1;
    int numero2;
    int suma;

    printf("Ingrese un nro entero\n");
    scanf("%d", &numero1);

    printf("Ingrese un otro nro entero\n");
    scanf("%d", &numero2);

    suma = numero1 + numero2;

    printf("El valor de la variable numero1 es %d y el valor de la variable numero2 es %d\n", numero1, numero2);

    printf("El resultado de la suma es %d\n", suma);

    system("pause");

    return 0;
}