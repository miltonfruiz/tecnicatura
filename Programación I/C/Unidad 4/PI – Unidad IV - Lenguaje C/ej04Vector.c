/* 4. Dado el vector {10, 20, 5, 15, 30, 20} 
    a. Informar el vector de la forma: "Índice: X, Valor: Y". 
    b. Totalizar el vector e informar el total. 
    c. Informar el contenido de las posiciones impares. 
    d. Informar las posiciones que contienen números impares. 
    e. Informar el mayor número. 
    f. Informar cuántas veces aparece el número 20.  */

#include <stdio.h>
#include <stdlib.h>
#define FIL 6

void main(){
    int vector[FIL];
    float total = 0;
    int mayor = 0;
    int contador = 0;
    vector[0] = 10;
    vector[1] = 20;
    vector[2] = 5;
    vector[3] = 15;
    vector[4] = 30;
    vector[5] = 20;

    for (int i = 0; i < FIL; i++)
    {
        printf("Indice %d, valor %d\n",i, vector[i]);
        total += vector[i];
        if (vector[i]>mayor)
        {
            mayor = vector[i];
        }
        if (vector[i] == 20)
        {
            contador += 1;
        }
    }
    printf("Total suma: %.2f\n",total);
    printf("Contenido posiciones impares: \n");
    for (int i = 0; i < FIL; i++)
    {
        if (i==1 || i==3 || i==5)
        {
            printf("Posicion %d ,valor %d\n",i, vector[i]);
        }
    }
    printf("Contenido numeros impares: \n");
    for (int i = 0; i < FIL; i++)
    {
        if (vector[i] % 2 == 1 )
        {
            printf("Posicion %d, valor %d\n",i,vector[i]);
        }
    }
    printf("El mayor es: %d\n",mayor);
    printf("El numero 20 aparece: %d\n",contador);
    system("pause");
}