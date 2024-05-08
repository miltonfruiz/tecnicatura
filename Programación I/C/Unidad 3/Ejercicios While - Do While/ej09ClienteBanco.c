/* 9. Realizar un programa que permita ver información a un cliente de un banco. Para ello 
el cliente deberá ingresar su usuario (número de DNI) y contraseña (número entero), 
validar que los datos ingresados sean correctos, se permitirá al cliente 3 intentos de
ingreso de contraseña. Al loguarse correctamente presentar un menú con las 
siguientes opciones:
1- Consultar saldo
2- Consultar CBU
3- Salir */

#include <stdio.h>
#include <stdlib.h>

void main(){
    int dni = 35654123;
    int pass = 1234;
    int saldo = 150000;
    int cbu = 986323456;
    int dniIngresado = 0;
    int passIngresado = 0;
    int intentos = 1;
    int ingresaCorrectamente = 0;

    system("pause");
}