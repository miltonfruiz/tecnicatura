#include <stdio.h>

/*Ahora realicemos un programa que muestre todos los números impares del conjunto de números enteros que van de desde 1 a N, siendo N un valor 
ingresado por el usuario, pero utilizando la estructura Mientras*/

int main(){
    int i, maximo;
    printf("Ingrese valor maximo:\n");
    scanf("%i", &maximo);
    i = 1;
    while (i <= maximo)
    {
        printf("%i\n",i);
        i = i + 2;
    }
    return 0;

}