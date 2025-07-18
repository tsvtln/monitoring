#!/bin/bash
# get GPU core temperature
awk '/^nouveau-pci-0100/{f=1} f&&/temp1:/ {match($0, /\+([0-9.]+)°C/, a); print a[1]; exit}' <(sensors)