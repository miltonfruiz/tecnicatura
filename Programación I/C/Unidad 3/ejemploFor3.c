#include <stdio.h>

/*Ejemplo 7
Ahora realicemos un programa que muestre todos los números impares del conjunto de números enteros que van desde el 1 hasta N, siendo N 
ingresado por el usuario*/

int main(){
    int maximo;
    int nro;
    printf("Ingrese valor maximo:\n");
    scanf("%i", &maximo);
    for (nro = 1; nro <= maximo; nro += 2)
    {
       printf("%i\n", nro);
    }
    return 0;
}