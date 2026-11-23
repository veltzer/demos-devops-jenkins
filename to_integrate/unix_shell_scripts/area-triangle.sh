#!/bin/bash
: "${SIDE_A:?SIDE_A must be set}"
: "${SIDE_B:?SIDE_B must be set}"
: "${SIDE_C:?SIDE_C must be set}"
a=${SIDE_A}
b=${SIDE_B}
c=${SIDE_C}

echo "The side of the triangles: ${SIDE_A}, ${SIDE_B}, ${SIDE_C}"

s=$(echo "scale=4; (${a}+${b}+${c})/2" | bc)
area=$(echo "scale=4; sqrt(${s}*(${s}-${a})*(${s}-${b})*(${s}-${c}))" | bc)
echo "The area of the triangle is ${area}"
