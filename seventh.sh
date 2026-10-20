#! /bin/bash

var1="10"
var2="20"
var3="!"

echo "The value of var1 is: $var1"
echo "The value of var2 is: $var2" 
echo "The value of var3 is: $var3"
echo "The sum of var1 and var2 is: $((var1 + var2))$var3"

declare -i COUNT=5
COUNT+=1
echo "count value is $COUNT"

fruits=("apple" "banana" "cherry")
echo "The first fruit is: ${fruits[0]}" 
echo "The second fruit is: ${fruits[1]}"
echo "The third fruit is: ${fruits[2]}" 
echo "All fruits: ${fruits[@]}"

#end
