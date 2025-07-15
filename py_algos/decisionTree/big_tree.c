#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "big_tree.h"

#define NUM_SAMPLES 100000000
#define NUM_FEATURES 20  // Must match your model input size

int main() {
    // Allocate memory for inputs and results
    int16_t (*inputs)[NUM_FEATURES] = malloc(sizeof(int16_t) * NUM_SAMPLES * NUM_FEATURES);
    int32_t *results = malloc(sizeof(int32_t) * NUM_SAMPLES);

    if (!inputs || !results) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    srand(42);  // Fixed seed for reproducibility

    // Generate random inputs in the expected value range
    for (int i = 0; i < NUM_SAMPLES; i++) {
        for (int j = 0; j < NUM_FEATURES; j++) {
            inputs[i][j] = rand() % 100;  // Values in [0, 99]
        }
    }

    // Time the inference loop
    clock_t start = clock();

    for (int i = 0; i < NUM_SAMPLES; i++) {
        results[i] = big_tree_predict(inputs[i], NUM_FEATURES);
    }

    clock_t end = clock();
    double elapsed = (double)(end - start) / CLOCKS_PER_SEC;

    printf("Completed %d inferences in %.3f seconds\n", NUM_SAMPLES, elapsed);

    // Clean up
    free(inputs);
    free(results);

    return 0;
}
