#include <stdio.h>

int main(){
    int lado1 = 0, lado2 = 0, lado3 = 0, perimetro = 0;

    printf("Ingrese el primer lado: ");
    scanf("%d", &lado1);
    printf("Ingrese el segundo lado: ");
    scanf("%d", &lado2);
    printf("Ingrese el tercer lado: ");
    scanf("%d", &lado3);

    perimetro = lado1 + lado2 + lado3;

    printf("El perimetro es %d\n", perimetro);
}