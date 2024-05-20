/* Arreglo de cadenas */

#include <stdio.h>
#include <stdlib.h>

void main(){
    char nombreUsuario[50];

    printf("Ingrese su nombre: \n");
    scanf("%s", &nombreUsuario);
    
    printf("El nombre ingresado es: %s\n", nombreUsuario);
    
    system("pause");
}