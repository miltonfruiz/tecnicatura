/* Una tienda de ropa desea llevar un registro de las ventas diarias. Para ello, el programa debe 
permitir ingresar los datos de cada venta a medida que se realizan. Por cada venta, se debe ingresar:
El código de la prenda (validar que sea un código válido de 4 caracteres)
El precio de la prenda en pesos
La talla de la prenda (S, M, L, XL)
La cantidad de prendas vendidas
Luego, se calculará el monto final de la venta aplicando los siguientes recargos:
Si la talla es XL, se aplica un 5% de recargo sobre el precio de la prenda.
Si se compran más de 3 prendas del mismo código, se aplica un 10% de descuento sobre el monto total.
Al finalizar el día, el programa mostrará un resumen con la cantidad total de ventas realizadas y el 
monto total recaudado.*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(){
    char codigo[4], talla[2], opc1;
    float precio, precioVenta, totalRecaudado;
    int prendas, totalVentas;
    precioVenta = 0;
    totalRecaudado = 0;
    totalVentas = 0;

    do
    {
        printf("\nDesea ingresar venta? (s/n): ");
        scanf("%s", &opc1);
        if (opc1 =='s')
        {
            do
            {
                printf("Ingrese codigo: ");
                scanf("%s", &codigo);
            } while (strlen(codigo) != 4);
            printf("Ingrese precio: $");
            scanf("%f", &precio);
            printf("Ingrese talla, S - M - L - XL: ");
            scanf("%s", &talla);
            if (talla =="xl")
            {
                precioVenta = precio +(precio*0.05);
            }
            printf("Ingres cantidad prendas: ");
            scanf("%d", &prendas);
            if (prendas>3)
            {
                precioVenta = precio*0.90;
            } else{
                precioVenta = precio;
            }
            totalVentas = totalVentas + 1;
            totalRecaudado = totalRecaudado + precioVenta;
        }
    } while (opc1 != 'n');
    printf("\nTotal ventas: %d\n", totalVentas);
    printf("Total recaudado: $%.2f\n\n", totalRecaudado);

    system("pause");
}