/* 5. Dado el vector inflación {0.8, 0.1, 0.3, 0.4, 0.3, 0.6, 0.5, 0.3, 0.7, 0.3, 0.2, 0.9} 
Cada ítem del vector representa la inflación de un mes de tal manera que el primer ítem del vector 
que es 0.8 representa la inflación de Enero, y el último ítem del vector que es 0.9 representa la 
inflación de diciembre. Se pide: 
    a. Informar la inflación anual 
    b. Informar la inflación más baja, junto con el nro. de mes. Por ejemplo: Mes 2 = 0.1 
    c. Informar la inflación más alta, junto con el nro. de mes. Por ejemplo: Mes 12 = 0.9  */

#include <stdio.h>
#include <stdlib.h>
#define FIL 12

void main(){
    float inflacion[FIL];
    float anual = 0;
    float baja = 10;
    int mesBaja = 0;
    float alta = 0;
    int mesAlta = 0;
    inflacion[0] = 0.8;
    inflacion[1] = 0.1;
    inflacion[2] = 0.3;
    inflacion[3] = 0.4;
    inflacion[4] = 0.3;
    inflacion[5] = 0.6;
    inflacion[6] = 0.5;
    inflacion[7] = 0.3;
    inflacion[8] = 0.7;
    inflacion[9] = 0.3;
    inflacion[10] = 0.2;
    inflacion[11] = 0.9;
    for (int i = 0; i < FIL; i++)
    {
        anual += inflacion[i];
        if (inflacion[i]<baja)
        {
            baja = inflacion[i];
            mesBaja = i;
        }
        if (inflacion[i]>alta)
        {
            alta = inflacion[i];
            mesAlta = i;
        }
        
    }
    printf("Inflacion anual %.1f\n",anual);
    printf("Inflacion mas baja: %.1f, mes %d\n",baja,mesBaja+1);
    printf("Inflacion mas alta: %.1f, mes %d\n",alta,mesAlta+1);
    system("pause");
}