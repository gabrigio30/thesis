#include <stdio.h>

// Funzione di test con diverse istruzioni aritmetiche/logiche
int compute_value(int a, int b) {
    int x = a + b;
    int y = a * 2;
    int z = b ^ 0x55;
    x = x + y;
    z = z - a;
    if (x > z) {
        y = y + 3;
        x = x ^ y;
    } else {
        z = z + 5;
    }
    return x + y + z;
}

// Main che chiama la funzione per test
int main() {
    int a = 7;
    int b = 13;
    int res = compute_value(a, b);
    printf("Result = %d\n", res);
    return 0;
}
