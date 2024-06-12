/* 3. Declarar un array de tipo entero de 5 componentes, asignarles un valor por consola, 
mostrar cuántas veces se repite el número 5. */

#include <stdio.h>
#include <stdlib.h>
#define FIL 5

void main(){
    int componentes[FIL];
    int repetido = 0;

    for (int i = 0; i < FIL; i++)
    {
        printf("Ingrese un valor: ");
        scanf("%d", &componentes[i]);
        if (componentes[i] == FIL)
        {
            repetido += 1;
        }
        
    }
    printf("Se repite: %d\n",repetido);
    system("pause");
}