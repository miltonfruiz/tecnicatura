#include <stdio.h>
#include <stdbool.h>

int main(){
    bool alumno_es_regular;
    float nota_final;

    printf("El alumno es regular? Ingrese verdadero o falso\n");
    scanf("%i", &alumno_es_regular);
    printf("Ingrese nota final\n");
    scanf("%f", &nota_final);

    if(alumno_es_regular){
        if(nota_final >= 6){
            printf("Alumno aprobado!\n");
        }else {
            printf("Alumno desaprobado!");
        }
    } else{
        printf("No puede ser aprobado. No posee condicion de alumno regular");
    }

    return 0;
}