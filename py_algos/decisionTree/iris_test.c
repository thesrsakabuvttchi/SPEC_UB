#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "iris.h"
#include "papiInit.h"

#define DEFAULT_NUM_SAMPLES 500000000
#define NUM_FEATURES 4

int main(int argc, char** argv) {
    int num_samples = DEFAULT_NUM_SAMPLES;
    if (argc > 1) {
        num_samples = atoi(argv[1]);
        if (num_samples <= 0 || num_samples > 1000000) {
            printf("Please enter a sample count between 1 and 1000000\n");
            return 1;
        }
    }

    // Allocate input buffer
    int16_t (*inputs)[NUM_FEATURES] = malloc(sizeof(int16_t) * NUM_FEATURES * num_samples);
    if (!inputs) {
        perror("Failed to allocate input buffer");
        return 1;
    }

    // Seed random number generator
    srand(42);

    // Fill with random values in a reasonable range (e.g., [0, 100))
    for (int i = 0; i < num_samples; ++i) {
        for (int j = 0; j < NUM_FEATURES; ++j) {
            inputs[i][j] = (rand() % 10)-3;
        }
    }

    init_papi_vars();
    t1 = PAPI_get_real_usec();
    PAPI_start(eventset);

    // Run inference
    for (int i = 0; i < num_samples; ++i) {
        (void)iris_predict(inputs[i], NUM_FEATURES);  // Discard result
    }

    printf("Time taken (Branching): %lld usec\n", PAPI_get_real_usec() - t1);
    PAPI_stop(eventset, values);
    
    for (int j = 0; j < nevents; j++ ) {
        PAPI_get_event_info(events[j], &info);
        printf("%20s = %lld\n", info.short_descr, values[j]);
    }
    printf("Branch accuracy: %lf%%\n", 100 * (1.0 - (float)values[2] / values[1]));
    printf("\n");

    free(inputs);
    return 0;
}
