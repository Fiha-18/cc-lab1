#include <stdio.h>

int square(int x) {
    return x * x;
}

int main() {
    int num = 5;
    int result = square(num);
    printf("Square of %d is %d\n", num, result);
    return 0;
}