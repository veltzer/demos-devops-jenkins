#!/bin/bash

number=${NUM}
i=2
flag=0
while test ${i} -le $((number / 2)); do
  if test $((number % i)) -eq 0; then
    flag=1
  fi
  i=$((i + 1))
done
if test ${flag} -eq 1; then
  echo "The number ${NUM} is not a prime number"
else
  echo "The number ${NUM} is a prime number"
fi
