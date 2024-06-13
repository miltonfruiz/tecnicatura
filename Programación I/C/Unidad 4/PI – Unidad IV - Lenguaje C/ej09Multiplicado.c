/* 9. Escriba un programa que lea 5 números por teclado, los copie a otro array 
multiplicados por 2 y muestre el segundo array. */

#include <stdio.h>
#include <stdlib.h>
#define FIL 5

void main(){
    int numeros[FIL];
    int multiplicado[FIL];

    for (int i = 0; i < FIL; i++)
    {
        printf("Ingrese numero: ");
        scanf("%d", &numeros[i]);
        multiplicado[i] = numeros[i]*2;
    }
    for (int i = 0; i < FIL; i++)
    {
        printf("%d ",multiplicado[i]);
    }
    printf("\n");
    system("pause");
}