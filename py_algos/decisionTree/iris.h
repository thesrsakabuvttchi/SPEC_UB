


    // !!! This file is generated using emlearn !!!

    #include <eml_trees.h>
    

static const EmlTreesNode iris_nodes[8] = {
  { 3, 0, -1, 1 },
  { 3, 1, 1, 5 },
  { 2, 4, 1, 2 },
  { 3, 1, -2, -3 },
  { 3, 1, -3, 1 },
  { 0, 6, -2, -3 },
  { 2, 4, 1, -3 },
  { 0, 5, -2, -3 } 
};

static const int32_t iris_tree_roots[1] = { 0 };

static const uint8_t iris_leaves[3] = { 0, 1, 2 };

EmlTrees iris = {
        8,
        (EmlTreesNode *)(iris_nodes),	  
        1,
        (int32_t *)(iris_tree_roots),
        3,
        (uint8_t *)(iris_leaves),
        0,
        4,
        3,
    };

static inline int32_t iris_tree_0(const int16_t *features, int32_t features_length) {
    int rval;
          if (features[3] < 0) {
              rval = 0;
          } else {
              if (features[3] < 1) {
                  if (features[2] < 4) {
                      if (features[3] < 1) {
                          rval = 1;
                      } else {
                          rval = 2;
                      }
                  } else {
                      if (features[3] < 1) {
                          rval = 2;
                      } else {
                          if (features[0] < 6) {
                              rval = 1;
                          } else {
                              rval = 2;
                          }
                      }
                  }
              } else {
                  if (features[2] < 4) {
                      if (features[0] < 5) {
                          rval = 1;
                      } else {
                          rval = 2;
                      }
                  } else {
                      rval = 2;
                  }
              }
          }
          return(rval);
        }
        

int32_t iris_predict(const int16_t *features, int32_t features_length) {

        int32_t votes[3] = {0,};
        int32_t _class = -1;

        _class = iris_tree_0(features, features_length); votes[_class] += 1;
    
        int32_t most_voted_class = -1;
        int32_t most_voted_votes = 0;
        for (int32_t i=0; i<3; i++) {

            if (votes[i] > most_voted_votes) {
                most_voted_class = i;
                most_voted_votes = votes[i];
            }
        }
        return most_voted_class;
    }
    