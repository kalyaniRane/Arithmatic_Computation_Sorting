#!/bin/bash -x

echo "Welcome To Arithmatic Operations And Sorting"

read -p "Enter the three numbers : " a b c

echo -e "a=$a \n b=$b \n c=$c"

#Performing the Arithmetic operation
operation1=$((a + b * c))
operation2=$((a * b + c))
operation3=$(echo "scale=1; $c + $a / $b" | bc)


echo "((a + b * c)) = $operation1"
echo "((a * b + c)) = $operation2"
echo "((c + a / b)) = $operation3"
