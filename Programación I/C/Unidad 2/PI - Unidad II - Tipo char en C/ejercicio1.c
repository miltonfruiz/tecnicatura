/* 1- Imprimir los caracteres 'A', 'B', 'C' y sus códigos ASCII correspondientes. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    char a = 'A' , b = 'B', c = 'C';

    printf("Caracter %c, codigo ASCII: %d\n",a, a);
    printf("Caracter %c, codigo ASCII: %d\n",b, b);
    printf("Caracter %c, codigo ASCII: %d\n",c, c);
    
    system("pause");
}