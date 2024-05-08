/* 2. Declarar un array de tipo entero de 5 componentes, asignarles un valor, mostrar la 
suma de sus componentes y el promedio. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, suma, arreglo[5];
    float promedio;

    suma = 0;
    promedio = 0;

    for ( i = 0; i < 5; i++)
    {
        printf("Ingrese un valor: ");
        scanf("%d", &arreglo[i]);
        suma = suma + arreglo[i];
    }
    promedio = suma / 5;
    
    printf("\nLa suma es: %d\n", suma);
    printf("El promedio es: %.2f\n\n", promedio);
    
    system("pause");
}