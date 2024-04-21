/* 6- Leer una nota de un alumno por consola e informar la condición del mismo. (menor 
que 4: Reprobado, menor que 6: Regular, mayor o igual que 6: Promocionado). Validar 
que la nota ingresada se encuentre entre el 0 y el 10, de lo contrario informar “Nota 
inválida”. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    float nota;

    printf("Ingrese nota: \n");
    scanf("%f", &nota);

    if (nota >= 0 && nota <=10)
    {
        if (nota < 4)
        {
            printf("Reprobado\n");
        } else if (nota < 6)
        {
            printf("Regular\n");
        } else {
            printf("Promocionado\n");
        }
    } else {
        printf("Nota ingresada incorrecta\n");
    }
    
    system("pause");
}