#!/bin/bash -x
: "${NUMBER_OF_ROWS:?NUMBER_OF_ROWS must be set}"
set +x
rows=${NUMBER_OF_ROWS}
for ((i = 1; i <= rows; i++)); do
  for ((j = 1; j <= rows - i; j++)); do
    echo -n "  "
  done
  for ((j = 1; j <= 2 * i - 1; j++)); do
    echo -n "* "
  done
  echo
done
