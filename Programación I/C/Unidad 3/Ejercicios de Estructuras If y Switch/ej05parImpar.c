/* 5- Escriba un programa que pida ingresar un número y a continuación escriba en la 
consola si el mismo es par o impar. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int num;

    printf("Ingrese un numero: \n");
    scanf("%i", &num);

    if (num % 2 == 0)
    {
        printf("El numero ingresado es par\n");
    } else {
        printf("El numero ingresado es impar\n");
    }
    
    system("pause");
}