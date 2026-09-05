#!/bin/bash

f=${FAHRENHEIT}
celsius=$(echo "scale=4; (${f} - 32) / 1.8" | bc)
echo "${FAHRENHEIT} converted to celsius is: ${celsius}"
