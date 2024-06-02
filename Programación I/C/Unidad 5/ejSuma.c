#include <stdio.h>
#include <stdlib.h>

float sumar(float num1, float num2);

int main()
{
    float numero1, numero2, resultado;

    printf("Ingresa primer numero:\n");
    scanf("%f", &numero1); //45
    printf("Ingresa segundo numero:\n");
    scanf("%f", &numero2); //20



    resultado = sumar(numero1, numero2); // llamada a la función sumar(45,20)

    printf("La suma es: %f\n", resultado);

    system("pause");
    return 0;
}

// función sumar
float sumar(float num1, float num2)
{
    float respuesta;
    respuesta = num1 + num2;
    return respuesta;
}