~/llvm-cfmse/bin/clang++ -DSPEC -DWITH_NETBUILDER=yes -std=c++98   -gmlt -O2  -enable-cfmse=false -march=native ./simulator/*.cc ./model/*.cc -I ./simulator/ -I ./simulator/platdep/
