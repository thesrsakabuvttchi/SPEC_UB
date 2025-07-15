#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
// #include <eml_neighbors.h>
#include "iris_knn.h"

#define NUM_SAMPLES 10000000
#define NUM_FEATURES 4
#define MAX_NEIGHBORS 150  // same as iris_knn.n_samples

int main() {
    int16_t (*inputs)[NUM_FEATURES] = malloc(sizeof(int16_t) * NUM_FEATURES * NUM_SAMPLES);
    int32_t *results = malloc(sizeof(int32_t) * NUM_SAMPLES);
    EmlNeighborsDistanceItem *distances = malloc(sizeof(EmlNeighborsDistanceItem) * MAX_NEIGHBORS);

    if (!inputs || !results || !distances) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    srand(42);  // Seed RNG

    for (int i = 0; i < NUM_SAMPLES; i++) {
        for (int j = 0; j < NUM_FEATURES; j++) {
            inputs[i][j] = rand() % 10;
        }
    }

    clock_t start = clock();

    for (int i = 0; i < NUM_SAMPLES; i++) {
        int16_t out;
        eml_neighbors_predict(&iris_knn, inputs[i], NUM_FEATURES, distances, MAX_NEIGHBORS, &out);
        results[i] = out;
    }

    clock_t end = clock();

    double elapsed = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Completed %d KNN inferences in %.3f seconds\n", NUM_SAMPLES, elapsed);

    free(inputs);
    free(results);
    free(distances);
    return 0;
}
