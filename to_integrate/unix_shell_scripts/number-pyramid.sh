#!/bin/bash -x
set +x
rows=${NUMBER_OF_ROWS}
number=1
for ((i = 1; i <= rows; i++)); do
  for ((j = 1; j <= rows - i; j++)); do
    echo -n "  "
  done
  number=${i}
  for ((j = 1; j <= 2 * i - 1; j++)); do
    if [ "${j}" -lt "${i}" ]; then
      echo -n "${number} "
      number=$((number + 1))
    elif [ "${j}" -eq "${i}" ]; then
      echo -n "${number} "
      number=$((number - 1))
    else
      echo -n "${number} "
      number=$((number - 1))
    fi
  done
  echo
done
