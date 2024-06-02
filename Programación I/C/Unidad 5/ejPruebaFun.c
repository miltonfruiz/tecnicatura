#include <stdio.h>
#include <stdlib.h>
void intercambio(int* a, int* b); //prototipo de la función intercambio
int main()
{
int i = 3, j = 50;
printf("i = %d y j = %d \n", i, j);
intercambio(&i, &j); //se pasan a la función intercambio() las direcciones de las variables i y j
printf("i = %d y j = %d \n", i, j);
system("pause");
return 0;
}
void intercambio(int* a, int* b)
{
int aux = *a; //asigna a la variable aux el valor de la variable a la que apunta a (es decir, la variable i)
*a = *b; //asigna el valor de variable que a la que apunta b, a la variable que apunta a
*b = aux; //asigna el valor de aux a la variable que apunta b (es decir, la variable j)
}
