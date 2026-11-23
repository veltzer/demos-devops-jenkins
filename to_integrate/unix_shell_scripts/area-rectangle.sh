#!/bin/bash
: "${LENGTH:?LENGTH must be set}"
: "${WIDTH:?WIDTH must be set}"

l=${LENGTH}
w=${WIDTH}
area=$((l*w))
echo "The area of the rectangle is ${area}"
