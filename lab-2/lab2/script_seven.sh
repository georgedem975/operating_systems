#!/bin/bash

arr=()
j=0
t=0
flag=0

while [[ $t -lt 60 ]];
do
	for i in $(ps xao pid);
	do
		if [ -f /proc/$i/io ]; then
			if [ $flag -eq 0 ]; then
				arr+=($cat /proc/$i/io | grep "read_bytes" | awk '{print $2}'))
				j=$((j+1))
				flag=$((flag+1))
			else
				arr[$j]=$((${arr[$j]}+$(cat /proc/$i/io | grep "read_bytes" | awk '{print $2}' )))
				j=$((j+1))
			fi
			echo ${arr[@]}
		fi
	done
	t=$((t+1))
	j=0
	echo "done"
	sleep 1
done

k=0
: > temp_seven.txt

for i in $(ps xao pid);
do
	if [ -f /proc/$i/io ]; then
		echo "$i:${arr[k]}" >> temp_seven.txt
		k=$((k+1))
	fi
done

echo | sort -nk2 -t':' /home/user/lab2/temp_seven.txt | tail -3