#!/bin/bash
# Displays the highest temperature of CPU with multiple cores
awk '/^Core/ {match($0, /\+([0-9.]+)°C/, a); if(a[1]>max) max=a[1]} END {if(max!="") print max}' <(sensors)