#include <stdio.h>

#define MAX_DIM1 5
#define MAX_DIM2 10

int main() {
    int matriz[MAX_DIM1][MAX_DIM2];
    int i, j;

    for( i=0; i<MAX_DIM1; i++) {
        for( j=0; j<MAX_DIM2; j++) {
            //matriz[i][j] = 0;
            scanf("%d", &matriz[i][j]);
        }
    }
}
