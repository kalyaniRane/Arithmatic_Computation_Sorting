#!/bin/bash -x 

echo "Welcome To Arithmatic Operations And Sorting"

read -p "Enter the three numbers : " a b c

echo -e "a=$a \n b=$b \n c=$c"

#declareing a dictionary
declare -A dict

#Performing the Arithmetic operation
dict[operation1]=$((a + b * c))
dict[operation2]=$((a * b + c))
dict[operation3]=$(echo "scale=1; $c + $a / $b" | bc)
dict[operation4]=$(echo "$a % $b + $c" | bc)

for((i=1;i<5;i++))
do
		echo "dict[operation$i]=${dict[operation$i]}"
done

