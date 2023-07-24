#! /usr/bin/bash

#functions
function name(){
    echo "My Name is MaxWell"
    echo $1 $2 $3
}
littleBreak(){
    exit
}
name cristiano ronaldo siuuu
#littleBreak

#Local Variables
function print(){
    local name=$1
    echo "$name"
}
name=Tom
echo "$name"
print Speed

echo "$name"

#Function Example
usage() {
    echo "You need to provide an argument: "
    echo "usuage: $0 file_name"
}

# is_file_exist() {
#     local file="$1"
#     if [[  -f "$file"  ]] && return 0 || return 1
# }
function is_file_exist() { 
 return $([ -f $1 ]) 
}

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1" )
then 
echo "File Found"
else
echo "File not found"
fi

#ReadOnly command can use with variables and functions
var=31
readonly var
var=50

hello() {
    echo "Hello IT"
}
readonly -f hello
readonly -f #check the readonly functions
readonly -p #check the readonly variables

#float poiint math operations in Bash apt-get install bc
num1=3.7
num2=4

echo "3.5+4" | bc
echo "scale=2;$num1+$num2" | bc

num=27
echo "scale=2;sqrt($num)" | bc -l

echo "3^3" | bc -l

#Signals and Traps //man 7 signal
#CtrlC interrupt signal / CtrlZ suspend signal / kill -9 PID / kill 0 is a success signal

#trap "echo Exit sig CtrlC is detected" SIGINT
file=/home/crseven/Desktop/file.txt
trap "rm -f $file ; exit" 0 2 15
#15 signterm //In other terminal, kill -15 GOT_PID
echo "pid is $$"
while(( C<10 ))
do 
sleep 10
(( C++ ))
echo $C
done
exit 0