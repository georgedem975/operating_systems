#!/bin/bash

ARRAY=()
j=0

for i in $(sort -nk4 -t' ' /home/user/lab2/answer.txt | cut -d ' ' -f 7 | tr -s '\r\n' ' ');
do
	ARRAY+=($i)
	j=$((j+1))
done

sort -nk4 -t' ' /home/user/lab2/answer.txt > tmp.txt

arr=()

for i in $(sort -nk4 -t' ' /home/user/lab2/answer.txt | cut -d ' ' -f 4 | tr -s '\r\n' ' ');
do
	arr+=($i)
done

s=0
p=0
el=${arr[p]}

: > answer_for_script_five.txt

while IFC= read -r line; do
	if [[ el -eq ${arr[p]} ]]; then
		p=$((p+1))
		s=$((s+1))
		echo $line >> answer_for_script_five.txt
	else
		echo "Average_Runnig_Children_of_ParentID=$el is $s" >> answer_for_script_five.txt
		p=$((p+1))
		el=${arr[p]}
		s=0
	fi
done < tmp.txt

echo "Average_Running_Chidren_of_ParentID=$el if $s" >> answer_for_script_five.txt