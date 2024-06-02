/* Ejercicio 5 - Escriba un programa que pida ingresar un número y a 
continuación escriba en la consola si el mismo  es par o impar. */

int esPar(int numero);

void main()
{
    int numero, respuesta;
    printf("Ingresa un nro:\n");
    scanf("%d", &numero);

    respuesta = esPar(numero);

    if (respuesta == 0)
    {
        numero = numero * 2;
        printf("El numero es par");
    }
    else
    {
        numero = numero * 5; // ejemplo de que puedo quere hacer otra cosa ademas de imprimir en la consola
        printf("el numeo es impar");
    }

    system("pause");
}

// Esta función devuelve 1 si el número es par o 0 si el numero es impar
int esPar(int numero)
{
    int resultado;

    if (numero % 2 == 0)
    {
        resultado = 1;
    }
    else
    {
        resultado = 0;
    }
    return resultado;
}