/* Crear una función que calcule el cubo de un número real (float). El resultado deberá
ser otro número real. */

#include <stdio.h>
#include <stdlib.h>

float cubo( float num);

void main(){
    float num;

    printf("\nIngrese un numero: ");
    scanf("%f", &num);
    printf("El cubo es: %.f\n",cubo(num));
    
    system("pause");
}

float cubo(float x){
    return x*x*x;
}