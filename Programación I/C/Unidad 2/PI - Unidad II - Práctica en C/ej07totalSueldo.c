/* 7- Ingresar el valor de la hora y el tiempo trabajado por un comerciante, calcular su 
sueldo e imprimirlo */

#include <stdio.h>
#include <stdlib.h>

void main(){
    float hora, tiempo, sueldo;
    sueldo = 0;

    printf("Ingrese el valor de la hora: ");
    scanf("%f", &hora);
    printf("Ingrese tiempo trabajado: ");
    scanf("%f", &tiempo);

    sueldo = hora * tiempo;

    printf("El sueldo total es: %.2f\n", sueldo);

    system("pause");
}