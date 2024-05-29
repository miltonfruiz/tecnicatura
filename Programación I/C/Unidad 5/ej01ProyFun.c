#include <stdio.h>

float promedio( float a, float b);

int main(){
    printf("Promedio: %f",promedio(3,5));
}

float promedio(float a, float b){
    return (a+b)/2;
}