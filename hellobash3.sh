#! /usr/bin/bash

#While Loops and using sleep and open terminal with while loops

n=1
while [ $n -le 1 ]
do 
echo $n
n=$((n+1))
sleep 1
conhost.exe & #windows terminal 
#((n++)) ((++n))
done

#Read a file content in Bash

while IFS='' read -r line
do 
echo $line
done < ../alwayss.txt

#UNTIL loop used for if condition is false do ... done
number=1
until [ $number -ge 10 ]
do 
echo $number
((number++))
done

#For loop
for i in 1 2 3 4 5 
do 
echo $i
done

for i in {1..10}
do 
echo $i
done

for i in {1..10..2}
do 
echo $i
done

echo "For loop as like programming language version"
for((i=0;i<5;i++))
do 
echo $i
done

#Using for loops to execuet commands
for command in ls pwd date
do 
echo "--------$command---------"
$command
done

for cmd in * 
do
if [ -f $cmd ]
then 
echo $cmd
fi
done

###return 0 and 1 // if function return 0 the if-statement consider it True //
devA() {
    echo "optA"
    return 0
}

devB() {
    echo "optB"
    return 1 
}

if ( devA )
    then 
        echo "True"
    else
        echo "False"
fi
###

# #Select loop
# select name in max well hart thor
# do 
# #echo " $name selected " OR
# case $name in 
#             max)
#     echo max selected;;
#             well)
#     echo well selected;;
#         hart)
#     echo hart selected;;
#         thor)
#     echo thor selected;;
# esac
# done

#Break And Continue
for (( i=0;i<10;i++ ))
do
# if [ $i -gt 5 ]
# then 
# break
# fi
if [ $i -eq 3 -o $i -eq 6 ]
then 
continue
fi
echo $i
done






