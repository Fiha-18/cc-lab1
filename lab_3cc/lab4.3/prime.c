#include <stdio.h>

int main() {
    int n, flag = 0;
    printf("Enter number: ");
    scanf("%d", &n);
    for (int i = 2; i < n; ++i)
        if (n % i == 0) flag = 1;
    if (flag) printf("Not Prime\n");
    else printf("Prime\n");
    return 0;
}

