/* 5- El usuario debe poder ingresar los lados de un rectángulo y el programa calcula con 
esos datos la diagonal principal del rectángulo, superficie y perímetro. Mostrar al 
usuario los resultados */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void main(){
    int lado1, lado2;
    float diagonal = 0, superficie = 0, perimetro = 0;

    printf("Ingrese el primer lado: ");
    scanf("%i", &lado1);
    printf("Ingrese el segundo lado: ");
    scanf("%i", &lado2);

    diagonal = sqrt(lado1*2 + lado2*2);
    superficie = lado1 * lado2;
    perimetro = (lado1 + lado2) * 2;

    printf("La diagonal es: %.2f\n", diagonal);
    printf("La superficie es: %.2f\n", superficie);
    printf("El perimtro es: %.2f\n", perimetro);

    system("pause");
}