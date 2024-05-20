/* Arreglo de caracteres */

#include <stdio.h>
#include <stdlib.h>

void main(){
    char vocales[] = {'a', 'e', 'i', 'o', 'u'};

    for (int i = 0; i < 5; i++){
        printf("%c\n", vocales[i]);
    }
    
    system("pause");
}