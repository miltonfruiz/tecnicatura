#include <stdio.h>

int main(){
    int nro_mes;
    for(nro_mes = 12; nro_mes >= 1; nro_mes-=1){
        switch (nro_mes)
        {
        case 2:
            printf("Mes %i: tiene 28 dias (29 si el anio es bisiesto)\n", nro_mes);
            break;
        case 4: case 6: case 9: case 11:
            printf("Mes %i: tiene 30 dias\n", nro_mes);
            break;
        default:
            printf("Mes %i: tiene 31 dias\n", nro_mes);
        }
    }
    return 0;
}