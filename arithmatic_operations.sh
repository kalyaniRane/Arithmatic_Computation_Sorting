#!/bin/bash -x

echo "Welcome To Arithmatic Operations And Sorting"

read -p "Enter the three numbers : " a b c

echo -e "a=$a \n b=$b \n c=$c"

#Performing the Arithmetic operation
operation1=$((a + b * c))

echo "((a + b * c)) = $operation1"
