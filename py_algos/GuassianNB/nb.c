#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "iris_nb.h"  // <- your exported model

#define NUM_SAMPLES 100000000
#define NUM_FEATURES 4

int main() {
    float (*inputs)[NUM_FEATURES] = malloc(sizeof(float) * NUM_SAMPLES * NUM_FEATURES);
    int32_t *results = malloc(sizeof(int32_t) * NUM_SAMPLES);

    if (!inputs || !results) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    srand(42);  // fixed seed for reproducibility

    // Generate random test inputs (range [0, 10.0))
    for (int i = 0; i < NUM_SAMPLES; i++) {
        for (int j = 0; j < NUM_FEATURES; j++) {
            inputs[i][j] = (float)(rand() % 1000) / 100.0f;
        }
    }

    // Time inference
    clock_t start = clock();

    for (int i = 0; i < NUM_SAMPLES; i++) {
        results[i] = iris_nb_predict(inputs[i], NUM_FEATURES);
    }

    clock_t end = clock();
    double elapsed = (double)(end - start) / CLOCKS_PER_SEC;

    printf("Completed %d Naive Bayes inferences in %.3f seconds\n", NUM_SAMPLES, elapsed);

    free(inputs);
    free(results);
    return 0;
}
