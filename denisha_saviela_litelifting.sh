#!/bin/bash

file=$1
length=$(wc -m < $1)
num_newlines=$(wc -l < $1)
dif=$(($length - $num_newlines))
empty_line=$(grep -c '^$' example_file)
lower=$(grep -o [a-z] $1 | wc -l)
upper=$(grep -o [A-Z] $1 | wc -l)
numbers=$(grep -o [0-9] $1 | wc -l)
alphanumeric=$(($numbers + $upper + $lower))

echo "This file has $(wc -m < $1) charcaters in it."
echo "This file has $dif characters not counting the newline."
echo "This file has $empty_line empty lines."
echo "This file contains $alphanumeric characters."
