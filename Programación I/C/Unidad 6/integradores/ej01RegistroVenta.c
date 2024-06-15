#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Prototipos
void carga(char arreglo[4][4][30]);
void muestro(char arreglo[4][4][30]);
void registro(char arreglo[4][4][30]);
void montos(char arreglo[4][4][30]);
float calculo(float valor1, float valor2);

// llamados
void main(){
    char datos[4][4][30];
    
    carga(datos);
    registro(datos);
    montos(datos);
    muestro(datos);
}

// Procesos/Funciones
void carga(char arreglo[4][4][30]){
    strcpy(arreglo[0][0], "01");
    strcpy(arreglo[0][1], "3500.00");
    strcpy(arreglo[0][2], "Mantel 2x2");
    strcpy(arreglo[0][3], "0");

    strcpy(arreglo[1][0], "02");
    strcpy(arreglo[1][1], "800.99");
    strcpy(arreglo[1][2], "Plato playo 24cm");
    strcpy(arreglo[1][3], "0");

    strcpy(arreglo[2][0], "03");
    strcpy(arreglo[2][1], "1450.50");
    strcpy(arreglo[2][2], "Copa vino");
    strcpy(arreglo[2][3], "0");

    strcpy(arreglo[3][0], "03");
    strcpy(arreglo[3][1], "1450.50");
    strcpy(arreglo[3][2], "Copa vino");
    strcpy(arreglo[3][3], "0");
}
void muestro(char arreglo[4][4][30]){
    for (int i = 0; i < 4; i++)
    {
        printf("Codigo %s, Precio %s, Descripcion %s, Cantidad vendida %s\n",arreglo[i][0],arreglo[i][1],arreglo[i][2],arreglo[i][3]);
    }
    
}
void registro(char arreglo[4][4][30]){
    for (int i = 0; i < 4; i++)
    {
        printf("Ingrese cantidad vendida: ");
        scanf("%s", &arreglo[i][3]);
    }
}
void montos(char arreglo[4][4][30]){
    float precio, cantidad, montoProducto, ivaProducto, totalProducto, totalVendido, ivaTotal;
    for (int i = 0; i < 4; i++)
    {
        precio = atof(arreglo[i][1]);
        cantidad = atof(arreglo[i][3]);
        montoProducto = calculo(precio, cantidad);
        ivaProducto = montoProducto*0.21;
        totalProducto = montoProducto+ivaProducto;
        totalVendido = totalVendido + totalProducto;
        ivaTotal = ivaTotal+ivaProducto;
    }
    printf("El monto total neto es: %.2f\n",totalVendido);
    printf("El iva total es: %.2f\n",ivaTotal);
}
float calculo(float valor1, float valor2){
    float total;
    total = valor1*valor2;
    return total;
}