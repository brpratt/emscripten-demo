#include <stdio.h>

int main(void) {
    FILE *file = fopen("src/03-file.txt", "r");
    if (!file) {
        printf("cannot open file\n");
        return 1;
    }

    while (!feof(file)) {
        char c = fgetc(file);
        if (c != EOF) {
            putchar(c);
        }
    }

    fclose(file);
    return 0;
}
