#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int classify() {
    // Seed only once in main if you're using this in a loop
    int value = rand() % 100;  // Generates a number in [0, 99]

    if (value > 30) {
        return 5;
    } else {
        return -1;
    }
}

int main() {
    srand(time(NULL));  // Seed random number generator

    int result = classify();
    printf("Result: %d\n", result);

    return 0;
}
