#include <stdio.h>

void escribirCaracter( char a);

void escribirCadena( char *a);

char * devolverNota( int nota);

int main(){
    char *cadena = "Esta es otra cadena";

    escribirCadena("Esta es una cadena");
    escribirCadena(cadena);

    printf( "Situacion: %s\n", devolverNota( 10 ));
    printf( "Situacion: %s\n", devolverNota( 5 ));
    printf( "Situacion: %s\n", devolverNota( 3 ));
}

void escribirCaracter( char a) {
    //a definir
}

void escribirCadena( char *a) {
    printf( "%s\n", a);
}


char * devolverNota( int nota) {
    if( nota > 6 )
        return "Aprobado";
    if( nota >=4)
        return "Regular";
    return "No Aprobado";
}