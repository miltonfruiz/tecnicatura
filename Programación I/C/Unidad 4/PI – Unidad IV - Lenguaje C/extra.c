#include <stdio.h>
#include <string.h>

int main() {
    char cadena[100];

    printf("Ingrese una cadena de texto: ");
    fgets(cadena, sizeof(cadena), stdin);

    // Eliminar el salto de línea al final de la cadena
    // cadena[strcspn(cadena, "\n")] = '\0';

    printf("La cadena ingresada es: %s\n", cadena);

    return 0;
}