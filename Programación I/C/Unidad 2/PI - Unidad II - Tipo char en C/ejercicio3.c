/* 3- Pedir al usuario que ingrese un carácter en mayúscula y luego imprimir su equivalente en minúscula */

#include <stdio.h>
#include <stdlib.h>

void main(){
    char caracterMayuscula, caracterMinuscula;
    
    printf("Ingrese un caracter en mayuscula: ");
    scanf(" %c", &caracterMayuscula);

    caracterMinuscula = caracterMayuscula + 32;

    printf("El equivalente de %c en minuscula es: %c \n", caracterMayuscula, caracterMinuscula);

    system("pause");
}