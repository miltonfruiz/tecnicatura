/* 1) Pedir al usuario que ingrese dos números. Luego presentar el siguiente menú: 
1. Informar su suma
2. Informar su resta
3. Informar su multiplicación
4. Informar su división
5. Salir
Seleccione una operación:
Mostrar el resultado de la operación seleccionada.
Desarrollar 4 funciones, una para cada operación. */

#include <stdio.h>

int main(){
    float num1, num2;
    int opc;

    do
    {
        printf("Ingrese una opcion (0 para finalizar): \n");
        scanf("%d", &opc);
        if (opc != 0)
        {
            printf("Valor ingresado = %d \n", opc);
        }
    } while (opc==5);
    
    printf("Ingrese el primer numero: ");
    scanf("%f", &num1);
    printf("Ingrese el primer numero: ");
    scanf("%f", &num2);


}