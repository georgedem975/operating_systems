#!/bin/bash

ppp=()
arr=()
j=0

for i in $(ps xao pid);
do
	if [ -f /proc/$i/io ]; then
		arr[$j]=$(cat /proc/$i/io | grep "rchar" | awk '{print $2}')
		j=$((j+1))
	fi
done

echo ${arr[@]}
echo "done"

sleep 60

t=0
arr_two=()

for i in $(ps xao pid);
do
	if [ -f /proc/$i/io ]; then
		arr_two[$t]=$(cat /proc/$i/io | grep "rchar" | awk '{print $2}')
		t=$((t+1))
	fi
done

echo ${arr_two[@]}

k=0
: > temp_seven.txt

for i in $(ps xao pid);
do
	if [ -f /proc/$i/io ]; then
		temp1=${arr_two[$k]}
		temp2=${arr[$k]}
		temp=$(echo "$((${arr_two[$k]} - ${arr[$k]}))" | bc)
		echo "$i:$temp" >> temp_seven.txt
		k=$((k+1))
	fi
done

echo | sort -nk2 -t ':' /home/user/lab2/temp_seven.txt | tail -3