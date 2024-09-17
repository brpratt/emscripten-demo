#include <stdio.h>
#include <emscripten.h>

EM_JS(void, wat, (), {
    const result = ['1', '7', '11'].map(parseInt);
    console.log(result);
});

EM_JS(double, pow, (double x, double y), {
    return Math.pow(x, y);
});

int main(void) {
    wat();
    printf("%f\n", pow(2, 3));

    return 0;
}
