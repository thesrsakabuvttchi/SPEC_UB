#!/bin/bash

# Define output file for perf script results
PERF_SCRIPT_FILE="perf_script.txt"

# Remove the previous perf_script.txt if it exists
if [ -f "$PERF_SCRIPT_FILE" ]; then
  rm "$PERF_SCRIPT_FILE"
fi

# Define commands
cmd1="./x264_no_force --pass 1 --stats x264_stats.log --bitrate 1000 --frames 1000 -o BuckBunny_New.264 BuckBunny.yuv 1280x720 2>> run_000-1000_x264_r_base.mytest-m64_x264_pass1.err"
cmd2="./x264_no_force --pass 2 --stats x264_stats.log --bitrate 1000 --dumpyuv 200 --frames 1000 -o BuckBunny_New.264 BuckBunny.yuv 1280x720 2>> run_000-1000_x264_r_base.mytest-m64_x264_pass2.err"
cmd3="./x264_no_force --seek 500 --dumpyuv 200 --frames 1250 -o BuckBunny_New.264 BuckBunny.yuv 1280x720 2>> run_0500-1250_x264_r_base.mytest-m64_x264.err"

# Run perf record and script for each command
$cmd1
$cmd2
$cmd3

# # Run perf record
# perf record -e br_misp_retired.all_branches:ppp,br_misp_retired.cond:ppp,br_inst_retired.cond:ppp,br_inst_retired.all_branches:ppp,inst_retired.any_p:ppp -j any,u -o perf.data -- $cmd

# # Convert perf data to readable format and append to perf_script.txt
# perf script -i perf.data >> "$PERF_SCRIPT_FILE"

# # Inform user of completion for each command
# echo "Finished recording for: $cmd"


# # Final message
# echo "Perf data recorded and appended to $PERF_SCRIPT_FILE"
