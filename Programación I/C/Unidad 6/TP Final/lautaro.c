#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

// Declaraciones de las funciones
void ingreso();
void cargaRubros(char arreglo[6][2][50]);
void cargaArticulos(char arreglo1[][6][50], int total, char arreglo2[6][2][50]);
void ingresoCodigo(char arreglo1[][6][50], char arreglo2[6][2][50], int f);
void descripcion(char arreglo[][6][50], int f);
void precioVenta(char arreglo[][6][50], int f);
void cantidadExistente(char arreglo[][6][50], int f);
void quincenaUno(char arreglo[][6][50], int f);
void quincenaDos(char arreglo[][6][50], int f);
void incorrecto(const char *mensaje);
void buscoCodigo(char *encontrado, const char codigo[], char arreglo[][2][50], int limite);
int validoEntero(char ingresado[]);
void menu(char arreglo[][6][50], int total);
void opciones();
void muestraDescripcion(char arreglo[][6][50], int total);
void muestraCantidad(char arreglo[][6][50], int total);
void muestraStock(char arreglo[][6][50], int total);
void muestraCodigo(char arreglo1[][6][50], int total);
void ordenAscendente(char arreglo[][6][50], int fila);
void ordenDescendente(char arreglo[][6][50], int fila);
char pregunta(const char *texto);

// Función principal
int main() {
    ingreso();
    return 0;
}

// Implementación de la función ingreso
void ingreso() {
    char n[10], articulos[100][6][50], rubro[6][2][50];
    int cantidad, fil;

    cargaRubros(rubro);

    do {
        printf("\n>> Ferreteria: El Tornillo Loco <<\n");
        printf("\n   Ingrese cantidad articulos: ");
        scanf("%s", n);
        cantidad = validoEntero(n);
        if (cantidad == -1 || cantidad == 0) {
            incorrecto("¡Cantidad ingresada incorrecta!");
        }
    } while (cantidad == -1 || cantidad == 0);

    fil = atoi(n);
    cargaArticulos(articulos, fil, rubro);
}

// Implementación de la función cargaRubros
void cargaRubros(char arreglo[6][2][50]) {
    strcpy(arreglo[1][0], "100");
    strcpy(arreglo[1][1], "Tornillos y Tuercas");
    strcpy(arreglo[2][0], "300");
    strcpy(arreglo[2][1], "Adhesivos");
    strcpy(arreglo[3][0], "450");
    strcpy(arreglo[3][1], "Herrajes");
    strcpy(arreglo[4][0], "680");
    strcpy(arreglo[4][1], "Pinturas");
    strcpy(arreglo[5][0], "720");
    strcpy(arreglo[5][1], "Electricidad");
}

// Implementación de la función cargaArticulos
void cargaArticulos(char arreglo1[][6][50], int total, char arreglo2[6][2][50]) {
    for (int i = 1; i <= total; i++) {
        ingresoCodigo(arreglo1, arreglo2, i);
        descripcion(arreglo1, i);
        precioVenta(arreglo1, i);
        cantidadExistente(arreglo1, i);
        quincenaUno(arreglo1, i);
        quincenaDos(arreglo1, i);
    }
    menu(arreglo1, total);
}

// Implementación de la función ingresoCodigo
void ingresoCodigo(char arreglo1[][6][50], char arreglo2[6][2][50], int f) {
    char codigoEncontrado[50];
    char subCodigo[6];
    int longitudCodigo, longitudNArticulo;

    do {
        do {
            printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
            printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
            printf("    # Ingrese código: (3 digitos)\n");
            scanf("%s", arreglo1[f][0]); // arreglo1[f][0] guarda el código
            longitudCodigo = strlen(arreglo1[f][0]);

            if (longitudCodigo != 3) {
                incorrecto("¡Código ingresado incorrecto!");
            }
        } while (longitudCodigo != 3);

        buscoCodigo(codigoEncontrado, arreglo1[f][0], arreglo2, 5);

        if (strcmp(codigoEncontrado, "-1") == 0) {
            incorrecto("¡Ese código no existe!");
        } else {
            do {
                printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
                printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
                printf("    # Ingrese numero de articulo: (5 digitos)\n");
                scanf("%s", subCodigo);
                longitudNArticulo = strlen(subCodigo);

                if (longitudNArticulo != 5) {
                    incorrecto("¡Numero de Artículo Ingresado Incorrecto!");
                }
            } while (longitudNArticulo != 5);
        }
    } while (strcmp(codigoEncontrado, "-1") == 0);
}

// Implementación de la función incorrecto
void incorrecto(const char *mensaje) {
    printf("\n x %s x\n", mensaje);
    printf("\n * Pulse una tecla para reintentar...");
    getchar();
}

// Implementación de la función buscoCodigo
void buscoCodigo(char *encontrado, const char codigo[], char arreglo[][2][50], int limite) {
    int i = 0;
    do {
        i++;
    } while (strcmp(codigo, arreglo[i][0]) != 0 && i != limite);

    if (strcmp(codigo, arreglo[i][0]) == 0) {
        strcpy(encontrado, codigo);
    } else {
        strcpy(encontrado, "-1");
    }
}

// Implementación de la función validoEntero
int validoEntero(char ingresado[]) {
    for (int i = 0; i < strlen(ingresado); i++) {
        if (!isdigit(ingresado[i])) {
            return -1;
        }
    }
    return atoi(ingresado);
}
// Implementación de la función descripcion
void descripcion(char arreglo[][6][50], int f) {
    do {
        printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
        printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
        printf("Ingrese una descripcion: ");
        scanf("%s", arreglo[f][1]);
        if (strlen(arreglo[f][1]) == 0) {
            incorrecto("¡Descripcion incorrecta!");
        }
    } while (strlen(arreglo[f][1]) == 0);
}

// Implementación de la función precioVenta
void precioVenta(char arreglo[][6][50], int f) {
    char precio[10];
    int precioValido;
    do {
        printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
        printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
        printf("Ingrese el precio de los articulos: ");
        scanf("%s", precio);
        precioValido = validoEntero(precio);
        if (precioValido == -1 || strlen(precio) == 0) {
            incorrecto("Datos incorrectos");
        }
    } while (precioValido == -1 || strlen(precio) == 0);
    strcpy(arreglo[f][2], precio);
}

// Implementación de la función cantidadExistente
void cantidadExistente(char arreglo[][6][50], int f) {
    char cantidad[10];
    int cantidadValida;
    do {
        printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
        printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
        printf("Ingrese la cantidad de articulos de un mismo producto: ");
        scanf("%s", cantidad);
        cantidadValida = validoEntero(cantidad);
        if (cantidadValida == -1 || strlen(cantidad) == 0) {
            incorrecto("Datos incorrectos");
        }
    } while (cantidadValida == -1 || strlen(cantidad) == 0);
    strcpy(arreglo[f][3], cantidad);
}

// Implementación de la función quincenaUno
void quincenaUno(char arreglo[][6][50], int f) {
    char quincena[10];
    int quincenaValida;
    do {
        printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
        printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
        printf("Ingrese la cantidad de articulos vendidos en la primera quincena: ");
        scanf("%s", quincena);
        quincenaValida = validoEntero(quincena);
        if (quincenaValida == -1 || strlen(quincena) == 0) {
            incorrecto("Datos incorrectos");
        }
    } while (quincenaValida == -1 || strlen(quincena) == 0);
    strcpy(arreglo[f][4], quincena);
}

// Implementación de la función quincenaDos
void quincenaDos(char arreglo[][6][50], int f) {
    char quincena[10];
    int quincenaValida;
    do {
        printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
        printf("\n>>> Carga de datos: Artículo N° %d\n\n", f);
        printf("Ingrese la cantidad de articulos vendidos en la segunda quincena: ");
        scanf("%s", quincena);
        quincenaValida = validoEntero(quincena);
        if (quincenaValida == -1 || strlen(quincena) == 0) {
            incorrecto("Datos incorrectos");
        }
    } while (quincenaValida == -1 || strlen(quincena) == 0);
    strcpy(arreglo[f][5], quincena);
    printf("\n¡Datos ingresados correctamente!\n");
    getchar();
}

// Implementación de la función menu
void menu(char arreglo[][6][50], int total) {
    int opcion;
    char rsp;

    do {
        do {
            opciones();
            printf("* Ingrese una opción: ");
            scanf("%d", &opcion);
        } while (opcion < 0 || opcion > 6);

        switch (opcion) {
            case 1:
                muestraDescripcion(arreglo, total);
                rsp = pregunta("Desea volver al menu principal");
                break;
            case 2:
                muestraCantidad(arreglo, total);
                rsp = pregunta("Desea volver al menu principal");
                break;
            case 3:
                muestraStock(arreglo, total);
                rsp = pregunta("Desea volver al menu principal");
                break;
            case 4:
                muestraCodigo(arreglo, total);
                break;
        }
    } while (opcion != 6 && rsp != 'n');

    printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
    printf("\n ¡Hasta Pronto!\n");
}

// Implementación de la función opciones
void opciones() {
    printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
    printf("\n         >>> Bienvenido al Menú Principal <<<\n");
    printf("\n1. Mostrar lista de artículos ordenada por descripción ");
    printf("\n2. Mostrar lista de artículos ordenada por cantidad vendida");
    printf("\n3. Mostrar stock actual de artículos ");
    printf("\n4. Buscar artículo por código");
    printf("\n5. Mostrar estadísticas");
    printf("\n6. Salir ");
    printf("\n");
}

// Implementación de la función muestraDescripcion
void muestraDescripcion(char arreglo[][6][50], int total) {
    ordenAscendente(arreglo, total);
    printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
    printf("\n1. Mostrar lista de artículos ordenada por descripción \n");
    printf("\n |      Codigo      |      Descripción      |      Precio de Venta     |\n");
    printf(" ----------------------------------------------------------------------\n");
    for (int i = 1; i <= total; i++) {
        printf("         %s                   %s                     %s\n", arreglo[i][0], arreglo[i][1], arreglo[i][2]);
    }
    printf("\n * Pulse una tecla para continuar...\n");
    getchar();
}

// Implementación de la función muestraCantidad
void muestraCantidad(char arreglo[][6][50], int total) {
    float q1, q2, mes, precio, importe, monto = 0;
    ordenDescendente(arreglo, total);
    printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
    printf("\n2. Mostrar lista de artículos ordenada por cantidad vendida \n");
    printf("\n |    Codigo    |      Descripción     |    Total Vendido Mes   |    Importe Total   |\n");
    printf(" ------------------------------------------------------------------------------------\n");
    for (int i = 1; i <= total; i++) {
        q1 = atof(arreglo[i][4]);
        q2 = atof(arreglo[i][5]);
        mes = q1 + q2;
        precio = atof(arreglo[i][2]);
        importe = mes * precio;
        monto += importe;
        printf("       %s                %s                    %.2f                     $ %.2f\n", arreglo[i][0], arreglo[i][1], mes, importe);
    }
    printf("\n # Monto total de ventas realizadas en el mes: $%.2f\n", monto);
    printf("\n * Pulse una tecla para continuar...\n");
    getchar();
}

// Implementación de la función muestraStock
void muestraStock(char arreglo[][6][50], int total) {
    float q1, q2, mes, stock, actual;
    printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
    printf("\n3. Mostrar stock actual de artículos \n");
    printf("\n |      Codigo      |      Descripción      |      Stock Actual     |\n");
    printf(" -------------------------------------------------------------------\n");
    for (int i = 1; i <= total; i++) {
        q1 = atof(arreglo[i][4]);
        q2 = atof(arreglo[i][5]);
        mes = q1 + q2;
        stock = atof(arreglo[i][3]);
        actual = stock - mes;
        printf("         %s                   %s                     %.2f\n", arreglo[i][0], arreglo[i][1], actual);
    }
    printf("\n * Pulse una tecla para continuar...\n");
    getchar();
}

// Implementación de la función muestraCodigo
void muestraCodigo(char arreglo1[][6][50], int total) {
    char cod[10], busco[50], rsp;
    float q1, q2, precio, stock, mes, actual, importe;

    do {
        do {
            printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
            printf("\n4. Buscar artículo por código \n");
            printf("\n    # Ingrese código: (3 digitos)\n");
            scanf("%s", cod);
            if (strlen(cod) != 3) {
                incorrecto("¡Código ingresado incorrecto!");
            }
        } while (strlen(cod) != 3);

        buscoCodigo(busco, cod, arreglo1, total);

        if (strcmp(busco, "-1") == 0) {
            incorrecto("¡Ese codigo no existe!");
        } else {
            printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
            q1 = atof(arreglo1[1][4]);
            q2 = atof(arreglo1[1][5]);
            precio = atof(arreglo1[1][2]);
            stock = atof(arreglo1[1][3]);
            mes = q1 + q2;
            actual = stock - mes;
            importe = mes * precio;
            printf("\n4. Buscar artículo por código \n");
            printf("\n |    1ra Quiencena    |    2da Quincena    |    Stock Actual   | Importe Total Mes  |\n");
            printf(" ------------------------------------------------------------------------------------\n");
            printf("            %.2f                   %.2f                    %.2f                 %.2f\n", q1, q2, actual, importe);
            printf("\n * Pulse una tecla para continuar...\n");
            getchar();
        }

        rsp = pregunta("Desea realizar otra busqueda");
    } while (rsp != 'n');
}

// Implementación de la función pregunta
char pregunta(const char *texto) {
    char opcDesea;
    do {
        printf("\033[H\033[J"); // Limpiar pantalla (ANSI escape code)
        printf("\n ¿%s? [s/n]\n", texto);
        scanf(" %c", &opcDesea);
        if (opcDesea != 'n' && opcDesea != 's') {
            incorrecto("¡Opción Ingresada Incorrecta!");
        }
    } while (opcDesea != 's' && opcDesea != 'n');
    return opcDesea;
}

// Implementación de la función ordenAscendente
void ordenAscendente(char arreglo[][6][50], int fila) {
    int i, j, k;
    char aux[50];
    for (i = 1; i < fila - 1; i++) {
        for (j = i + 1; j < fila; j++) {
            if (strcmp(arreglo[i][1], arreglo[j][1]) > 0) {
                for (k = 0; k < 6; k++) {
                    strcpy(aux, arreglo[i][k]);
                    strcpy(arreglo[i][k], arreglo[j][k]);
                    strcpy(arreglo[j][k], aux);
                }
            }
        }
    }
}

// Proceso de Ordenamiento mayor a menor
// ------------------------------------------------------------------------------------------
void ordenDescendente(char arreglo[][6][50], int fila) {
    int i, j, k;
    float q1, q2, q3, q4;
    char aux[50];
    for (i = 1; i < fila - 1; i++) {
        for (j = i + 1; j < fila; j++) {
            q1 = atof(arreglo[i][4]);
            q2 = atof(arreglo[i][5]);
            q3 = atof(arreglo[j][4]);
            q4 = atof(arreglo[j][5]);
            if ((q1+q2)<(q3+q4)) {
                for (k = 0; k < 6; k++) {
                    strcpy(aux, arreglo[i][k]);
                    strcpy(arreglo[i][k], arreglo[j][k]);
                    strcpy(arreglo[j][k], aux);
                }
            }
        }
    }
}
// ------------------------------------------------------------------------------------------