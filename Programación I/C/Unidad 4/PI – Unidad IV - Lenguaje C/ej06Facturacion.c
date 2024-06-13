/* 6. Ingrese por teclado la facturación de los últimos 6 meses del año. Informar: 
    a. La facturación total 
    b. El promedio de facturación 
    c. La máxima facturación 
    d. La mínima facturación */

#include <stdio.h>
#include <stdlib.h>
#define FIL 6

void main(){
    float factura[FIL];
    float total, promedio, maximo = 0;
    float minima = 99999;
    for (int i = 0; i < FIL; i++)
    {
        printf("Ingrese facturacion: $");
        scanf("%f", &factura[i]);
        total += factura[i];
        if (factura[i]>maximo)
        {
            maximo = factura[i];
        }
        if (factura[i]<minima)
        {
            minima = factura[i];
        }
    }
    promedio = total/FIL;
    printf("Facturacion total: $%.2f\n",total);
    printf("Facturacion promedio: $%.2f\n",promedio);
    printf("Facturacion maxima: $%.2f\n",maximo);
    printf("Facturacion minima: $%.2f\n",minima);
    system("pause");
}