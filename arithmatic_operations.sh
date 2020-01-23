#!/bin/bash -x

echo "Welcome To Arithmatic Operations And Sorting"

read -p "Enter the three numbers : " a b c

echo -e "a=$a \n b=$b \n c=$c"

#declareing a dictionary
declare -A dict

ASC='>'
DESC='<'

#Performing the Arithmetic operation and store in into the dictionary
dict[operation1]=$((a + b * c))
dict[operation2]=$((a * b + c))
dict[operation3]=$(echo "scale=1; $c + $a / $b" | bc)
dict[operation4]=$(echo "$a % $b + $c" | bc)

#Print Dictionary

function print()
{
	for((i=1;i<5;i++))
	do
		echo "dict[operation$i]=${dict[operation$i]}"
	done
}

#function calling
print

#Store elements of Dictionary into Array
for((i=0;i<4;i++))
do
		arr[i]=${dict[operation$((i+1))]}
done

#print Array
echo "Array elements are: "${arr[@]}

#sort array in descending
function sort()
{
	sign=$1
	len=${#arr[@]}
	for((i=0;i<len;i++))
	do
	  for((j=0;j<len;j++))
	  do
	     if (( $(echo "$((${arr[j]%.*})) $sign $((${arr[j+1]%.*}))" ) ))
	     then
        	 temp=${arr[j]}
	  		 arr[j]=${arr[j+1]}
	  		 arr[j+1]=$temp
	     fi
	  done
	done
}

#sort function calling
sort $DESC
echo "Array After Descending Sort: "${arr[@]}

sort $ASC
echo "Array after Ascending Sort: "${arr[@]}

