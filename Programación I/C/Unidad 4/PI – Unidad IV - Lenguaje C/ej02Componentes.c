/* 2. Declarar un array de tipo entero de 5 componentes, asignarles un valor, mostrar la 
suma de sus componentes y el promedio. */

#include <stdio.h>
#include <stdlib.h>
#define FIL 5

void main(){
    int componentes[FIL];
    float suma = 0;
    float promedio = 0;

    for (int i = 0; i < FIL; i++)
    {
        printf("Ingrese valor: ");
        scanf("%d", &componentes[i]);
        suma += componentes[i];
    }
    promedio = suma / FIL;

    printf("\nTotal suma: %.2f",suma);
    printf("\nPromedio %.2f\n",promedio);

    system("pause");
}