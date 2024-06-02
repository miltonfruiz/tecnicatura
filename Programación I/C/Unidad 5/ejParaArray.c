#include <stdio.h>
#include <stdlib.h>
void reemplazar(char cadena[], int tam);
int main()
{
char palabra[10];
printf("Escriba una palabra\n");
scanf("%s", palabra);
printf("Palabra ingresada: %s.\n", palabra);
reemplazar(palabra, 10); //cuando paso un array cómo parametro no hace falta el operador &
printf("Palabra modificada: %s.\n", palabra);
system("pause");
return 0;
}
void reemplazar(char cadena[], int tam)
{ // El tamaño de cadena va a depender del array que le pasen cómo parámetro
// Para que accedamos a posiciones válidas del array, en general
// se pasa también cómo parámetro el tamaño del mismo..
for(int i = 0; i < tam; i++)
{
if(cadena[i] == 'a')
{
cadena[i] = '8';
}
}
}
