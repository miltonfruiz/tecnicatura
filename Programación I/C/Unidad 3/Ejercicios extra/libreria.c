/* Una librería desea llevar un registro de las ventas diarias. Para ello, el programa debe permitir 
ingresar los datos de cada venta a medida que se realizan. Por cada venta, se debe ingresar:
El nombre del cliente
El monto de la compra en pesos
La cantidad de libros comprados
Si el cliente es socio de la librería (S/N)
Luego, se calculará el monto final de la venta aplicando los siguientes descuentos:
Si el cliente es socio, se aplica un 10% de descuento sobre el monto total.
Si se compran más de 5 libros, se aplica un 5% de descuento adicional.
Al finalizar el día, el programa mostrará un resumen con la cantidad total de ventas realizadas y el monto
 total recaudado. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char opc1, nombre[50], socio;
    float monto, montoVenta, totalRecaudado;
    int libros, totalVentas;
    montoVenta = 0;
    totalRecaudado = 0;
    totalVentas = 0;

    do
    {
        printf("\nDesea ingresar venta? (s/n): ");
        scanf("%s", &opc1);
        if (opc1=='s')
        {
            printf("\nIngrese nombre: ");
            scanf("%s", &nombre);
            printf("Ingrese monto: $");
            scanf("%f", &monto);
            printf("Ingrese cantidad libros: ");
            scanf("%d", &libros);
            if (libros>5)
            {
                montoVenta = monto * 0.95;
            } else {
                montoVenta = monto;
            }
            printf("Es socio? (s/n): ");
            scanf("%s", &socio);
            if (socio=='s')
            {
                montoVenta = monto * 0.90;
            }
            totalVentas = totalVentas + 1;
            totalRecaudado = totalRecaudado + montoVenta;
        }
    } while (opc1 !='n');
    printf("\nTotal ventas: %d\n", totalVentas);
    printf("Total recaudado: $%.2f\n\n", totalRecaudado);

    system("pause");
}