#!/bin/bash

arr=("${arr[@]}")
i=0

while true
do
	read -p "enter: " str
	arr+=("$str")
	if [[ "${arr[i]}" == "q" ]]; then
		break
	fi
	((i++))
done

printf -- '%s\n' "${arr[@]}"