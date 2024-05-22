/* 13. Ingresar por consola 10 nombres de alumnos en un array y sus apellidos en otro,concatenar 
de la forma "nombre apellido" para cada uno, y mostrar por consola. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char nombre[10][100];
    char apellido[10][100];
    char concatenar[10][100];

    for (int i = 0; i < 10; i++)
    {
        printf("Ingrese nombre: ");
        fgets(nombre[i], sizeof(nombre[i]), stdin);
    }
    for (int j = 0; j < 10; j++)
    {
        printf("Ingrese apellido: ");
        fgets(apellido[j], sizeof(apellido[j]), stdin);
    }

    for (int k = 0; k < 10; k++)
    {
        strcat(concatenar[k], nombre[k]);
        strcat(concatenar[k], " ");
        strcat(concatenar[k], apellido[k]);
        printf("%s\n", &concatenar[k]);
    }
    

    system("pause");
}

/* #include <stdio.h>
    #include <string.h>

int main() {
    char cadena[100];

    printf("Ingrese una cadena de texto: ");
    fgets(cadena, sizeof(cadena), stdin);

    // Eliminar el salto de línea al final de la cadena
    cadena[strcspn(cadena, "\n")] = '\0';

    printf("La cadena ingresada es: %s\n", cadena);

    return 0;
}*/