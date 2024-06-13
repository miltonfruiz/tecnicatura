/* 7. Declarar un array de tipo decimal, que el usuario ingrese la cantidad de notas a cargar, 
leer las notas por consola, mostrar la suma de sus componentes y el promedio. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int n;
    float decimal[n];
    float suma,promedio = 0;
    printf("Ingrese cantidad de notas: ");
    scanf("%d", &n);
    for (int i = 0; i < n; i++)
    {
        printf("Ingrese nota %d: ",i+1);
        scanf("%f", &decimal[i]);
        suma += decimal[i];
    }
    promedio = suma/n;
    printf("Total suma: %.2f\n",suma);
    printf("Promedio: %.2f\n",promedio);
    system("pause");
}