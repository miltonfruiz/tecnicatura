/* 8. Leer 10 números por teclado, 5 para un array y 5 para otro array distinto. Mostrar los 
10 números en pantalla mediante un solo array. */

#include <stdio.h>
#include <stdlib.h>
#define FIL 5

void main(){
    int auno[FIL];
    int ados[FIL];
    int atres[FIL*2];
    for (int i = 0; i < FIL; i++)
    {
        printf("Ingrese numero array1: ");
        scanf("%d", &auno[i]);
        atres[i] = auno[i];
    }
    for (int i = 0; i < FIL; i++)
    {
        printf("Ingrese numero array2: ");
        scanf("%d", &ados[i]);
        atres[i+5] = ados[i];
    }
    for (int i = 0; i < FIL*2; i++)
    {
        printf("%d ",atres[i]);
    }
    system("pause");
}