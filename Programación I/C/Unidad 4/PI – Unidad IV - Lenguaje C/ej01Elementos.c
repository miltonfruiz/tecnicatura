/* 1. Declarar un array de tipo entero de 5 elementos, asignarles un valor, mostrar de la 
forma: “Índice: X, Valor: Y” en el orden ingresado y de atrás hacia adelante. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int elementos[5];

    for (int i = 0; i < 5; i++)
    {
        printf("Ingrese un valor: ");
        scanf("%d", &elementos[i]);
    }
    printf("\nAscendente: \n");
    for (int i = 0; i < 5; i++)
    {
        printf("Indice: %d ,valor %d\n",i+1, elementos[i]);
    }
    printf("\nDescendente: \n");
    for (int i = 5; i > 0; --i)
    {
        printf("Indice: %d ,valor %d\n",i, elementos[i-1]);
    }
    
    system("pause");
}