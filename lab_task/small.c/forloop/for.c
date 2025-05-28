#include <stdio.h>

int main() {
    int arr[] = {3, 7, 1, 9, 4, 2};
    int size = sizeof(arr) / sizeof(arr[0]);
    int target, found = 0;

    printf("Enter the number to search: ");
    scanf("%d", &target);

    for (int i = 0; i < size; i++) {
        if (arr[i] == target) {
            printf("Number %d found at index %d\n", target, i);
            found = 1;
            break;
        }
    }

    if (!found) {
        printf("Number %d not found in the array.\n", target);
    }

    return 0;
}