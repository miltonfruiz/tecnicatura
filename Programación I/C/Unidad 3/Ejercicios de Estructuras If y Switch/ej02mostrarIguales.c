/* 2- Ingresar por teclado dos números, determinar cuál es el mayor y visualizarlo en
pantalla. Informar también si los números son iguales */

#include <stdio.h>
#include <stdlib.h>


void main(){
    int num1, num2;

    printf("Ingrese el primer numero: \n");
    scanf("%i", &num1);
    printf("Ingrese el segundo numero: \n");
    scanf("%i", &num2);

    if (num1 > num2)
    {
        printf("El primer numero ingresado es mayor: %i\n",num1);
    } else if (num2 > num1)
    {
        printf("El segundo numero ingresado es mayor: %i\n",num2);
    } else
    {
        printf("Los numeros ingresados son iguales: %i - %i\n",num1,num2);
    }
    
    system("pause");
    
}