#include <stdio.h>
#include <stdlib.h>

void main(){
    int numero, i, operacion;

    printf("Ingrese numero par: ");
    scanf("%d", &numero);
    for ( i = numero; i>=0; i = i-2)
    {
        operacion = 0+i*2;
        printf("%d\n", operacion);
    }
    system("pause");
}