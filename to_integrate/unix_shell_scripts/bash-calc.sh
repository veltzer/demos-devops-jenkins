#!/bin/bash 
: "${FIRST:?FIRST must be set}"
: "${SECOND:?SECOND must be set}"
: "${OPERATION:?OPERATION must be set}"

readlink -f "$(command -v sh)"

# Take user Input 
a=${FIRST}
b=${SECOND}

echo "First number : ${FIRST}"
echo "Second number : ${SECOND}"


# type of operation select only first letter
ch=${OPERATION:0:1}
echo "Operation Choice : ${OPERATION}"
echo "Your Choice : ${ch}"

#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division

# Switch Case to perform 
# calculator operations
case ${ch} in
1)res=$(echo "${a}" + "${b}" | bc)
;; 
2)res=$(echo "${a}" - "${b}" | bc)
;; 
3)res=$(echo "${a}" \* "${b}" | bc)
;; 
4)res=$(echo "scale=2; ${a} / ${b}" | bc)
;; 
*)echo "Unknown operation: ${OPERATION}" >&2
exit 1
;;
esac
echo "Result : ${res}"

