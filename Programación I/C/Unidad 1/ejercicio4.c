#include <stdio.h>
#include  <math.h>

int main(){
    int lado1 = 0, lado2 = 0;
    float hipotenusa = 0, perimetro = 0, superficie = 0;

    printf("Ingrese primer lado: ");
    scanf("%d", &lado1);
    printf("Ingrese segundo lado: ");
    scanf("%d", &lado2);

    hipotenusa = sqrt(lado1*2 + lado2*2);
    perimetro = hipotenusa + lado1 + lado2;
    superficie = (lado1 + lado2) / 2;

    printf("La hipotenusa es %f\n", hipotenusa);
    printf("El perimetro es %f\n", perimetro);
    printf("La superficie es %f\n", superficie);
    
}