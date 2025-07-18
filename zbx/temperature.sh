#!/bin/bash
# Temperature of CPU with 1 core (like raspberry pi)
sensors | grep 'temp1' | awk '{print $2}'
