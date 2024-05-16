/* 14. Diseñar e implementar un programa que solicite a su usuario un valor no negativo n y 
visualice la siguiente salida: 
1   2   3  ... n-1   n
1   2   3  ... n-1 
1   2   3
1   2   
1 */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int i, j, valor;

    printf("\nIngrese un valor: ");
    scanf("%d", &valor);
    
    for (i = valor; i >= 1 ; i--)
    {
        for ( j = 1; j <= i ; j++)
        {
            printf("%d ",j);
        }
        printf("\n");
    }
    
    system("pause");
}