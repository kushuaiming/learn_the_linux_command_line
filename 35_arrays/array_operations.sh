#!/bin/bash

echo array-operations

echo Outputing the entire contents of an array
animals=("a dog" "a cat" "a fish")
for i in ${animals[*]}; do echo $i; done
for i in ${animals[@]}; do echo $i; done
for i in "${animals[*]}"; do echo $i; done
for i in "${animals[@]}"; do echo $i; done
echo -e

echo Determining the number of array elements
a[100]=foo
echo ${#a[@]} # number of array elements
echo ${#a[100]} # length of element 100
echo -e

echo Finding the subscripts used by an array
foo=([2]=a [4]=b [6]=c)
for i in "${foo[@]}"; do echo $i; done
for i in "${!foo[@]}"; do echo $i; done
echo -e

echo Adding elements to the end of an array
foo=(a b c)
echo ${foo[@]}
foo+=(d e f)
echo ${foo[@]}
echo -e

echo Deleting an array
foo=(a b c d e f)
echo ${foo[@]}
unset foo
echo ${foo[@]}
foo=(a b c d e f)
echo ${foo[@]}
unset 'foo[2]'
echo ${foo[@]}
foo=(a b c d e f)
foo=
echo ${foo[@]}
foo=(a b c d e f)
echo ${foo[@]}
foo=A
echo ${foo[@]}
echo -e

echo Associative arrays
declare -A colors
colors["red"]="#ff0000"
colors["green"]="#00ff00"
colors["blue"]="#0000ff"
echo ${colors["blue"]}
echo -e