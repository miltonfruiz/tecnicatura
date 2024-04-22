/* 8- Ingresar el tiempo trabajado por un contador y considerando que el valor de la hora es 
de 800 pesos, calcular su sueldo e imprimirlo */

#include <stdio.h>
#include <stdlib.h>

void main(){
    float tiempo, sueldo;
    int hora;
    sueldo = 0;
    hora = 800;

    printf("Ingrese tiempo trabajado: ");
    scanf("%f", &tiempo);

    sueldo = hora * tiempo;

    printf("El sueldo total es: %.2f\n", sueldo);

    system("pause");
}