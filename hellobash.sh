#! /usr/bin/bash

#first bash shell script
echo "Hello Bash Script"

#this is a first comment and comment can't execute
echo The shell name is $BASH
echo 
echo The shell version name is $BASH_VERSION
echo 
echo The home directory is $HOME
echo 
echo The current work directoy is $PWD
echo

#Variables System vars are Capital Letter and User vars are Smaller Letter
#variable name should not start with number e.g 13val
name=Maxwell
age=20

echo My name is $name
echo
echo My age is $age

#Read User Input
echo "Enter  name:"
read name
echo "Enter name:$name"

echo "Enter names:"
read n1 n2 n3
echo "Names: $n1,$n2,$n3"

#Input on the same line
read -p "Username:" user_val
read -sp "Password:" password_val
echo
echo "Username:$user_val"
echo "Password:$password_val"

echo "Enter namess:"
read -a namess
echo "Names: ${namess[0]},${namess[1]},${namess[2]},${namess[3]}"

echo "Enter your name:"
read
echo "Your name:$REPLY"

#Pass arguments to a bash
#first way
echo $0 $1 $2 $3 '>echo $0 $1 $2 $3'

#Second way
args=("$@")

echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}

#Third way
echo $@

echo The number of passed arguments to bash script is $#

#Pass arguments by- ./hellobash.sh max well best
#######

#If statement if then , if then else , if elif else -eq -ne ... < > ... 
#integer comperison > < is (()) and string comperison > < is [[ ]] and Others is []

count=100
if [ $count -eq 100 ]
then 
echo "count is equal to 100"
fi

word=abc
if [ $word="abc" ]
then 
echo "word is abc"
fi

word=y
if [[ $word>"z" ]]
then 
echo "word is greater than z"
elif [[ $word>"x" ]]
then 
echo "word is greater than x"
else 
echo "word is the greatest"
fi

