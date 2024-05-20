/* Arreglo de cadenas */

#include <stdio.h>
#include <stdlib.h>

void main(){
    char nombres[10][50];
    // El primer corchete indica la cantidad de nombres que necesito almacenar.
    // El segundo corchete indica la longitud máxima de cada nombre,
    // es decir los 10 nombres ingresados deberán tener menos de 50 caracteres.
    for (int i = 0; i < 10; i++)
    {
        printf("Ingrese el nombre %d\n", i + 1);
        scanf("%s", &nombres[i]);
        //fgets(nombres[i], sizeof(nombres[i]), stdin);
    }
    for (int i = 0; i < 10; i++)
    {
        printf("%s\n", nombres[i]);
    }

    
    system("pause");
}