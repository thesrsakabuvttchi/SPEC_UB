int getMaxIdx(int *arr,int size)
{
    int max_idx=0;
    for(int i=0;i<size;i++)
    {
        if(arr[max_idx]<arr[i])
            max_idx=i;
    }
    return(max_idx);
}

void applyForwardPass(const int *input, const int *weights, const int *biases,
                      int *output, int in_size, int out_size)
{
    for (int j = 0; j < out_size; j++) {
        output[j] = biases[j];  // start with the bias for neuron j
        for (int i = 0; i < in_size; i++) {
            output[j] += input[i] * weights[i * out_size + j];
        }
    }
}