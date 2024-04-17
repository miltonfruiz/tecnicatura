#include <stdio.h>

int main(){
    int nro_mes;
    printf("Ingrese el numero del mes:\n");
    scanf("%i", &nro_mes);
    switch (nro_mes)
    {
    case 2:
        printf("%s\n", ("Dias del mes: 28 (29 si el anio es bisiesto)"));
        break;
    case 4: case 6: case 9: case 11:
        printf("%s\n", ("Dias del mes: 30"));
        break;
    default:
        printf("%s\n", ("Dias del mes: 31"));
    }
}