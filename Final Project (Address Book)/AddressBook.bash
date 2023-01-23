#!/bin/bash

counter=0
arr=(0)

echo " "
echo "*********** The Address Book ************ "
echo " "

while true
do

echo "Press <1> : To list all items recorded"
echo " "
echo "Press <2> : To search for an item"
echo " "
echo "Press <3> : To add an item"
echo " "
echo "Press <4> : To edit an item"
echo " "
echo "Press <5> : To delete an item"
echo " "
echo "Press <0> : To terminate the program"
echo " "

read -p "Choose from above: " choice

#*************************
# To list all items recorded

if [ $choice -eq 1 ]
then

echo "${arr[@]}"



#**********************************
#To search for an item

elif [ $choice -eq 2 ] 
then

read -p "enter a number for searching:" search_num

for iterator in ${arr[@]}
do
if [ $search_num -eq $iterator ]
then
echo " "
echo "************************"
echo "This number exists"
echo "************************"
else
echo " "
echo "************************"
echo "This number does not exist"
echo "************************"
fi

done

#***************************
#To edit an item
elif [ $choice -eq 3 ]
then

read -p "enter a number: " num_added

arr[$counter]=$num_added
let counter=counter+1

#*******************************************************
#To edit an item 

elif [ $choice -eq 4 ]
then

read -p "enter a number to get out of list : " out 
index=0

while [ $index -lt $counter ]
do

if [ ${arr[$index]} -eq $out ]
then

read -p "enter a new number: " inside
arr[$index]=$inside

let index=counter+1
fi

let index=index+1
done

#********************************************************
# To Remove an item
elif [ $choice -eq 5 ]
then

read -p "Enter a number to be removed" num_removed

index_removed=0

while [ $index_removed -lt $counter ]
do
if [ ${arr[$index_removed]} -eq $num_removed ]
then
unset arr[$index_removed]
let counter=counter-1
fi
let index_removed=index_removed+1
done


#***************************************
#To terminate the program
elif [ $choice -eq 0 ]
then
break
fi

done
