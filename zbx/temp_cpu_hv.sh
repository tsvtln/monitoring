#!/bin/bash
# Displays the highest temperature of CPU with multiple cores
awk '{gsub(/[^0-9.]/,"",$2); if($2>max) max=$2} END {if(max!="") print max}' <(sensors | grep 'temp1')