#include <stdio.h>
// Voy a desarrollar el calculo de promiedos de un curso.
#define MAX_ALUMNOS 10
#define MAX_ALUMNOS_2 20
#define MAX_LONGITUD 50

void ingresodatosdeescuela(float n[], int cantidad);
float calculopromedioescuela(float n[], int cantidad);

int main(){
    float notas[MAX_ALUMNOS];
    float notasColegio2[MAX_ALUMNOS_2];

    ingresodatosdeescuela(notas, MAX_ALUMNOS);
    ingresodatosdeescuela(notasColegio2, MAX_ALUMNOS_2);

    calculopromedioescuela(notas, MAX_ALUMNOS);
    calculopromedioescuela(notasColegio2, MAX_ALUMNOS_2);
}

void ingresodatosdeescuela(float n[], int cantidad) {
    for( int i=0; i<cantidad; i++) {
        printf("Ingrese la nota del alumno %d: ", i);
        scanf("%f", &n[i]);
    }
}

float calculopromedioescuela(float n[], int cantidad) {
    float promedio=0;

    for( int i=0; i<cantidad; i++) {
        promedio = promedio + n[i];
    }

    return promedio / cantidad;
}