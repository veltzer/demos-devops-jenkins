#!/bin/bash
a=${SIDE_A}
b=${SIDE_B}
c=${SIDE_C}

echo "The side of the triangles: ${SIDE_A}, ${SIDE_B}, ${SIDE_C}"

s=$(echo "scale=4; (${a}+${b}+${c})/2" | bc)
area=$(echo "scale=4; sqrt(${s}*(${s}-${a})*(${s}-${b})*(${s}-${c}))" | bc)
echo "The area of the triangle is ${area}"
