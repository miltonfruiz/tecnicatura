/* 11. Escribe un programa que pida tres cadenas al usuario y muestre sus longitudes (número de letras). */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char cadenaUno[50];
    char cadenaDos[50];
    char cadenaTres[50];

    printf("Ingrese la primer cadena: ");
    scanf("%s", &cadenaUno);
    printf("Longitud: %d\n",strlen(cadenaUno));

    printf("Ingrese la primer cadena: ");
    scanf("%s", &cadenaDos);
    printf("Longitud: %d\n",strlen(cadenaDos));

    printf("Ingrese la primer cadena: ");
    scanf("%s", &cadenaTres);
    printf("Longitud: %d\n",strlen(cadenaTres));

    system("pause");
}