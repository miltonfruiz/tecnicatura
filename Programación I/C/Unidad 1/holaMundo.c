#include <stdio.h>  //me permite hacer uso de la funcion printf
#include <stdlib.h> //me permite hacer la llamada a la función system

//en cada archivo .c debe estar definida una sola función main()
int main()
{
    printf("Hola mundo!\n");
    
    system("pause");


    //esto es un comentario y no se compila
   
    
    /*
    esto es 
    un comentario 
    de más 
    de una línea
    me sigue pintando en verde el texto*/
    
    return 0;
}

//otra forma de definir la función main
/*
void main()
{
    printf("Hola mundo!\n");
    
    system("pause");

   
}
*/