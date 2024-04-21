// 3- Dado un número introducido por el usuario, indicar si este es positivo, negativo o nulo.

#include <stdio.h>
#include <stdlib.h>

void main(){
    int num;

    printf("Ingrese un numero: \n");
    scanf("%i", &num);

    if (num > 0)
    {
        printf("El numero ingresado es positivo: %i\n",num);
    } else if (num < 0)
    {
        printf("El numero ingresado es negativo: %i\n", num);
    } else {
        printf("El numero ingresado es nulo: %i\n",num);
    }
    
    system("pause");
}