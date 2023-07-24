#! /usr/bin/bash

#file test operators -e check file exists -f check regular file exists
#-d for check dir -s to check empty file data or not
#two types of files -b block special -c character special
echo -e "Enter filename: \c"
read file_name
if [ -e $file_name ]
then 
echo "$file_name found"
else
echo "$file_name not found"
fi

#append output to the end of the text file line by line top to bottom
echo -e "Enter filename: \c"
read file_name
if [ -f $file_name ]
then

if [ -w $file_name ]
then
echo "Type some text.Ctrl+d to quit"
cat >> $file_name 
else
echo "file do not have write permission"
fi

else 
echo "$file_name not exists"
fi

#Logical Operators AND OR

age=20
if [ $age -gt 18 -a $age -lt 30 ]
#if [ $age -gt 18 ] && [ $age -lt 30 ]
#if [[$age -gt 18 && $age -lt 30]]
then
echo "vaild age"
else
echo "invaild age"
fi

salary=70000 #dollor :3
if [ $salary -gt 77000 -o $salary -lt 90000 ]
then 
echo "good salary"
else
echo "every money amount is okay"
fi

#Arithmetic operation
echo 1+2
num1=3
num2=4

echo $(( num1+num2 ))
echo $( expr $num1 + $num2 )

#float point math operations
From Linux

#The case statement
vehicle=$1

case $vehicle in 
    "car")
        echo "Car is rent for 1000$";;
    "bicycle")
        echo "Bicycle is rent for 500$";;
    *)
        echo "It is rent for quality";;
esac #call by - ./hellobash2.sh car

#The case statement example Before ./hellobash2.sh Run LANG=C
echo -e "Enter the text: \c"
read value
case $value in 
    [a-z])
    echo "It is $value,within a to z";;
    [A-Z])
    echo "It is $value,within A to Z";;
    [0-9])
    echo "It is $value,within 0 to 9";;
    ?)
    echo "It is $value,a special character";;
    *)
    echo "Unknown Input!";;
esac

#Arrary Variables
os=('kali' 'parrot' 'windows')
echo "${os[@]}"
echo "${os[0]}"
echo "${!os[@]}"
echo "${#os[@]}"

string=abc
echo "${string[@]}"
echo "${string[1]}"
echo "${#string[@]}"