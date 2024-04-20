#include <stdio.h>

int main(){
    int edad;
    printf("Ingrese edad: \n");
    scanf("%i", &edad);

    if(edad >= 18){
        printf("Es mayor\n");
    } else {
        printf("Es menor\n");
    }
    return 0;
}