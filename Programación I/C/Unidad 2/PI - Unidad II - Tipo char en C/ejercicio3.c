#include <stdio.h>
#include <stdlib.h>

void main(){
    char caracterMayuscula, caracterMinuscula;
    printf("Ingrese un caracter en mayuscula: \n");
    scanf(" %c", &caracterMayuscula);

    caracterMinuscula = caracterMayuscula + 32;

    printf("El equivalente de %c en minuscula es: %c \n", caracterMayuscula, caracterMinuscula);

    system("pause");
}