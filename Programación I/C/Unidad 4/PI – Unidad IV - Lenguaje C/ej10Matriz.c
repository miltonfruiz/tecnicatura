/* 10. Escriba un programa que lea una matriz cuadrada la presente en pantalla, y presente
la suma de todos los números que no están en la diagonal principal. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int n;
    float suma = 0;
    printf("Ingrese tamano: ");
    scanf("%d", &n);
    int matriz[n][n];
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("Ingrese elemento de matriz %d %d: ",i,j);
            scanf("%d", &matriz[i][j]);
            if (j!=i)
            {
                suma += matriz[i][j];
            }
        }
    }
    printf("Suma total %.2f\n",suma);
    system("pause");
}