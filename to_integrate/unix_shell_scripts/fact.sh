#!/bin/bash

num=${NUMBER}
factorial=1
for(( i=1; i<=num; i++ ))
do
  factorial=$((factorial * i))
done
echo "The factorial of ${num} is ${factorial}"
echo "The factorial of ${num} is ${factorial}" > fact.txt
