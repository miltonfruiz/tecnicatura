#include <stdio.h>
#define MAX_STRLEN 256

int main(){
    int edad;
    char nbre_ape[MAX_STRLEN];
    printf("Ingrese nombre y apellido de la persona:\n");
    scanf("%s", nbre_ape);
    printf("Ingrese la edad de la persona:\n");
    scanf("%i", &edad);

    if(edad<18){
        printf("Advertencia: la persona es menor de edad\n");
    }
    printf("La persona ingresada es: %s (%i anios)\n", nbre_ape, edad);
    return 0;
}