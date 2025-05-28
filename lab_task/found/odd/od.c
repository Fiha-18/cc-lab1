#include <stdio.h>

int main() {
    int n;
    printf("Enter the upper limit: ");
    scanf("%d", &n);

    printf("Odd numbers from 1 to %d are:\n", n);
    for (int i = 1; i <= n; i++) {
        if (i % 2 != 0) {
            printf("%d ", i);
        }
    }


    return 0;
}