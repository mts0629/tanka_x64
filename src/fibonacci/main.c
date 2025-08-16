#include <stdio.h>

#define N 8

void fibonacci(int num, int *array);

int main(void) {
    int buf[N];

    fibonacci(N, buf);

    for (int i = 0; i < N; ++i) {
        printf("%d\n", buf[i]);
    }

    return 0;
}
