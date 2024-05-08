/* 1. Declarar un array de tipo entero de 5 elementos, asignarles un valor, mostrar de la 
forma: “Índice: X, Valor: Y” en el orden ingresado y de atrás hacia adelante. */

#include <stdio.h>
#include <stdlib.h>

#define MAX 5

void main() {
    int i;
    int arreglo[ MAX ];

    for ( i = 0; i < MAX; i++)
    {
        arreglo[i] = i;
    }
    
    //Mostrar en el orden ingresado
    printf("\nOrden Ingresado: \n\n");
    for ( i = 0; i < MAX; i++)
    {
        printf("Indice: %d, Valor %d\n", i, arreglo[i]);
    }
    
    //Mostrar en el orden inverso
    printf("\nOrden Inverso: \n\n");
    for ( i = MAX; i >= 0; i--)
    {
        printf("Indice: %d, Valor %d\n", i, arreglo[i]);
    }

    system("pause");
}