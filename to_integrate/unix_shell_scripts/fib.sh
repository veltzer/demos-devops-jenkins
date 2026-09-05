#!/bin/bash

N=${FIB_N}

echo "Print Fibonacci series for N: ${FIB_N}" > fib.txt

a=0

# Second Number of the Fibonacci Series
b=1

echo "The Fibonacci series is : " >> fib.txt

for ((i = 0; i < N; i++)); do
  echo -n "${a} " >> fib.txt
  fn=$((a + b))
  a=${b}
  b=${fn}
done

printf "\nFinished\n" >> fib.txt
#exit 1
