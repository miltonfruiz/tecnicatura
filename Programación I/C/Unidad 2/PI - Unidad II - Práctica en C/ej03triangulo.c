/* 3- Ingresar los lados de un triángulo calcular su perímetro e imprimirlo. */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int lado1, lado2, lado3, perimetro;
    perimetro = 0;
    
    printf("Ingrese el primer lado: ");
    scanf("%d", &lado1);
    printf("Ingrese el segundo lado: ");
    scanf("%d", &lado2);
    printf("Ingrese el tercer lado: ");
    scanf("%d", &lado3);

    perimetro = lado1 + lado2 + lado3;

    printf("El perimetro es %d\n", perimetro);

    system("pause");
}