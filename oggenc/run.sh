#!/bin/bash

# Define output file for perf script results
PERF_SCRIPT_FILE="perf_script.txt"

# Remove the previous perf_script.txt if it exists
if [ -f "$PERF_SCRIPT_FILE" ]; then
  rm "$PERF_SCRIPT_FILE"
fi

cmd="./a.out test.wav"

# Run perf record
perf record -e br_misp_retired.all_branches:ppp,br_misp_retired.cond:ppp,br_inst_retired.cond:ppp,br_inst_retired.all_branches:ppp,inst_retired.any_p:ppp -j any,u -o perf.data -- $cmd

# Convert perf data to readable format and append to perf_script.txt
perf script -i perf.data >> "$PERF_SCRIPT_FILE"

# Inform user of completion for each command
echo "Finished recording for: $cmd"


# Final message
echo "Perf data recorded and appended to $PERF_SCRIPT_FILE"
