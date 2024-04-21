/* 4- Ingresar por teclado tres números, determinar cuál es el mayor y visualizarlo en 
pantalla. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int num1, num2, num3;

    printf("Ingrese el primer numero: \n");
    scanf("%i", &num1);
    printf("Ingrese el segundo numero: \n");
    scanf("%i", &num2);
    printf("Ingrese el tercer numero: \n");
    scanf("%i", &num3);

    if (num1 >num2 && num1 > num3)
    {
        printf("El primer numero ingresado es el mayor: %i\n",num1);
    } else if (num2 > num1 && num2 > num3)
    {
        printf("El segundo numero ingresado es el mayor: %i\n",num2);
    } else {
        printf("El tercer numero ingresado es el mayor: %i\n",num3);
    }
    
    system("pause");
}