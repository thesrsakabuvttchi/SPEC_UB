#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include"papiInit.h"

#ifndef SIZErandom_size
#define SIZE 10000000
#endif

#ifndef RANDOMNESS
#define RANDOMNESS 100
#endif

void setup(float *arr, size_t n)
{
    int random_size = (int)(SIZE*(float)RANDOMNESS/100);
    for (size_t i = 0; i < random_size; i++)
    {
        float x = ((float)rand() / (float)RAND_MAX) * 2.0f - 1.0f;
        arr[i] = x;
    }
    for (size_t i = random_size; i < n; i++)
    {
        arr[i] = 0;
    }
}

int array_RELU(float *arr1) {
    for (int i = 0; i < SIZE-1; i++) {
        if(arr1[i]<arr1[i+1])
        {
            arr1[i] = 0;
        }
        else
        {
            arr1[i+1] = arr1[i+2];
        }
    }
    return 0;
}

int main() {
    float *arr1;
    arr1 = (float*)calloc(SIZE + 1, sizeof(float));

    setup(arr1,SIZE);

    init_papi_vars();

    t1 = PAPI_get_real_usec();
    PAPI_start(eventset);
    array_RELU(arr1); 
    printf("Time taken (Branching): %lld usec\n", PAPI_get_real_usec() - t1);
    PAPI_stop(eventset, values);
    
    for (int j = 0; j < nevents; j++ ) {
        PAPI_get_event_info(events[j], &info);
        printf("%20s = %lld\n", info.short_descr, values[j]);
    }
    printf("Branch accuracy: %lf%%\n", 100 * (1.0 - (float)values[2] / values[1]));
    printf("\n");

    free(arr1);
    return 0;
}