#!/bin/bash
# Average temperature of CPU with multiple cores
sensors | grep 'temp1' | awk '{gsub(/[^0-9.]/,"",$2); sum+=$2; count++} END {if(count>0) print sum/count}'