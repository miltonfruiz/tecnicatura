
/*********************************************************/
// fgets
/*********************************************************/
// Definición:

// char *fgets(char *str,int numChars,FILE *stream);
/*Ejemplo: fgets(cadena, sizeof(cadena), stdin); 

La función fgets lee una cadena en el argumento stream de entrada y la almacena en str. fgets lee los 
caracteres desde la posición de la secuencia actual hasta incluir el primer carácter de nueva línea al
final de la secuencia o hasta que el número de caracteres leídos sea igual a numChars - 1, lo que 
ocurra primero. Se anexa un carácter nulo al resultado que se almacena en str. El carácter de nueva 
línea, cuando se lee, se incluye en la cadena.*/

/*********************************************************/
//sizeof
/*********************************************************/
//sizeof ( variable );

//Ejemplo:

int main() {
    char cadena[100];
    printf("%d\n", sizeof(cadena));

    return 0;
}
//El programa mostrará 100;

/* El operador sizeof proporciona la cantidad de almacenamiento, en bytes, necesaria para 
almacenar un objeto del tipo del operando. Este operador permite no tener que especificar tamaños de 
datos dependientes del equipo en los programas. */

/*********************************************************/
//strcspn
/*********************************************************/
//size_t strcspn(const char *str,const char *strCharSet);

/*Devuelve el índice del primer carácter de str que está en strCharSet. Si ninguno de los 
caracteres de str está en strCharSet, el valor devuelto es la longitud de str.*/