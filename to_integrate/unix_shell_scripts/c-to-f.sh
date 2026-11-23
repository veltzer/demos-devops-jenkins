#!/bin/bash 
: "${CELSIUS:?CELSIUS must be set}"

c=${CELSIUS}
fahrenheit=$(echo "scale=4; ${c}*1.8 + 32" | bc)
echo "${c} degree celsius is equal to ${fahrenheit} degree fahrenheit"
