#include <stdio.h>
#include <stdlib.h>

void main(){
    char caracter;
    
    printf("Ingrese un caracter: ");
    caracter = getchar();
    
    printf("El caracter ingresado es: %c, valor ASCII %d\n", caracter, caracter);

    system("pause");
}