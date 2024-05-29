#include <stdio.h>

float promedio(float a, float b); // prototipo de la funcion
float promedio2(float *a, float *b);

int main(){
    float num1 = 3;
    float num2 = 5;

    printf( "num1: %f - num2: %f\n", num1,num2);
    printf( "Promedio : %f\n", promedio( num1,num2));
    printf( "num1: %f - num2: %f\n", num1,num2);
    printf( "Promedio : %f\n", promedio2( &num1, &num2));
    printf( "num1: %f - num2: %f\n", num1,num2);
    printf( "Promedio : %f\n", promedio( num1,num2));


    return 0;
}

float promedio(float a, float b){
    a = 4;
    return (a+b)/2;
}

float promedio2( float *a, float *b){
    *a = 6;
    return (*a+*b)/2;
}