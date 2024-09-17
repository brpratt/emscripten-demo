#include <stdio.h>

int main(void) {
    int *ptr = NULL;
    int value = *ptr;

    printf("Huh, I got 0x%08x\n", value);
    return 0;
}
