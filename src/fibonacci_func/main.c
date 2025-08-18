#include <stdio.h>
#include <stdlib.h>

#define N 8

void fibonacci(int num, int *array);

int main(int argc, char *argv[]) {
    int n = atoi(argv[1]);

    int *buf = malloc(sizeof(int) * n);

    fibonacci(n, buf);

    for (int i = 0; i < n; ++i) {
        printf("%d\n", buf[i]);
    }

    free(buf);

    return 0;
}
