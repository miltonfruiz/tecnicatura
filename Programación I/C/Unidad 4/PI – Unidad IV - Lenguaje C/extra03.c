#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main()
{
    char cadena[100], cadena_invertida[100];
    int i, j;
    printf("Ingrese una frase\n");
    fgets(cadena, sizeof(cadena), stdin);
    cadena[strcspn(cadena, "\n")] = '\0';
 
    for (i=strlen(cadena)-1, j=0; i>=0; i--, j++) {
        cadena_invertida[j]=cadena[i];
    }
    
    cadena_invertida[j]='\0';
    printf("%s\n", cadena_invertida);
    system("pause");
    return 0;
}