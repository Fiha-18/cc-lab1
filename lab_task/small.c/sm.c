#include <stdio.h>

int main() {
    int a, b;
    printf("Enter 2 numbers: ");
    scanf("%d %d", &a, &b);

    if (a>b) {
        printf("a is the largest number");
    }
    else if (b>a) {
        printf("b is the largest number");
    }
    else {
        printf("a is equal to b");
    }

    return 0;
}