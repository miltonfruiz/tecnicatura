/* 3. Escriba un algoritmo donde se le pida al usuario que ingrese la cantidad de personas invitadas a 
un evento, luego pedir que ingrese los nombres de la misma. Al finalizar la carga mostrar al usuario 
la lista de invitados. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main()
{
    int cantInvitados;
    printf("Ingrese la cantidad de invitados: ");
    scanf("%d", &cantInvitados);
    getchar(); // leea hasta ingreso de enter
    //fflush(stdin); limpiar buffer de entrada

    char invitados[cantInvitados][30];

    for (int i = 0; i < cantInvitados; i++)
    {
        printf("\nIngrese el nombre del invitado %d\n", i +1);
        //scanf("%s[^\n]", &invitados[i]); //para leer hasta \n
        fgets(invitados[i], sizeof(invitados[i]), stdin);
        // para eliminar el \n que podria incluir la funcion fgets
        invitados[i][strcspn(invitados[i], "\n")]= '\0';
    }

    printf("Los invitados son:\n");
    for (int i = 0; i < cantInvitados; i++)
    {
        printf("%d - %s\n", i+1, invitados[i]);
    }
    
    return 0;
}