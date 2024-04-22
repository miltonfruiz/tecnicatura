#include <stdio.h>
#include <stdlib.h>

void main(){
    char caracter;
    printf("Ingrese un caracter: ");
    scanf(" %c", &caracter); // Nota: Se añade un espacio antes de %c para ignorar espacios en blanco y saltos de línea
    printf("El caracter ingresado es: %c\n", caracter);
    system("pause");
}