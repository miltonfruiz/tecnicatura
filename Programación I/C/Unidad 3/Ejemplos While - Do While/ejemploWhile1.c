#include <stdio.h>
#include <stdlib.h>

void main() {
    int x = 1;
    
    while (x <= 100)
    {
        printf("%d", x);
        printf(" - ");
        x = x + 1;
    }
    system("pause");
}