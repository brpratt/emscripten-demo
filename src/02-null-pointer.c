#include <stdio.h>

int main(void) {
    int *ptr = NULL;

    printf("I'm going to dereference 0x%016lx\n", (long)ptr);
    printf("Huh, I got 0x%08x\n", *ptr);
    return 0;
}
