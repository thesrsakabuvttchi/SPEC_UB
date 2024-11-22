#!/bin/bash

# Run the first benchmark
./xz_r cld.tar.xz 160 \
19cf30ae51eddcbefda78dd06014b4b96281456e078ca7c13e1c0c9e6aaea8dff3efb4ad6b0456697718cede6bd5454852652806a657bb56e07d61128434b474 \
59796407 61004416 6 > cld.tar-160-6.out 2>> cld.tar-160-6.err

# Run the second benchmark
./xz_r cpu2006docs.tar.xz 250 \
055ce243071129412e9dd0b3b69a21654033a9b723d874b2015c774fac1553d9713be561ca86f74e4f16f22e664fc17a79f30caa5ad2c04fbc447549c2810fae \
23047774 23513385 6e > cpu2006docs.tar-250-6e.out 2>> cpu2006docs.tar-250-6e.err

# Run the third benchmark
./xz_r input.combined.xz 250 \
a841f68f38572a49d86226b7ff5baeb31bd19dc637a922a972b2e6d1257a890f6a544ecab967c313e370478c74f760eb229d4eef8a8d2836d233d3e9dd1430bf \
40401484 41217675 7 > input.combined-250-7.out 2>> input.combined-250-7.err

echo "All benchmarks completed."
