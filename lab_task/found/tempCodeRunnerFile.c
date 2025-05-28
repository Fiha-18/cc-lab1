#include <stdio.h>

int main() {
    int a;
    printf("Enter 1 numbers: ");
    scanf("%d", &a);
    int b=4;
    if (a==b) {
        printf("a is found");
    }
    else {
        printf("a is not equal");
    }

    return 0;
}