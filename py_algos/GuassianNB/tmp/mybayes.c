
        #include "mybayes.h"
        #include <eml_test.h>

        static void classify(const float *values, int length, int row) {
            printf("%d,%f\n", row, (double)eml_bayes_predict(&mybayes_model, values, length));
        }
        int main() {
            eml_test_read_csv(stdin, classify);
        }
        