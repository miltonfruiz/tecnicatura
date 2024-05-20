/* 12. Ingresar 2 nombres e indicar cuál de los dos precede alfabéticamente al otro o si son iguales.*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char nombreUno[50];
    char nombreDos[50];

    printf("Ingrese el primer: ");
    scanf("%s", &nombreUno);

    printf("Ingrese el segundo: ");
    scanf("%s", &nombreDos);

    if (strcmp(nombreUno, nombreDos) == 0)
    {
        printf("Son iguales\n");
    }
    else
    {
        printf("Precede\n");
    }
    system("pause");
}