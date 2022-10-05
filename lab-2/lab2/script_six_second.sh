#!/bin/bash

for i in $(ps xao pid);
do
	if [ -f /proc/$i/status ]; then
		t="$(grep -i "VMRSS" /proc/$i/status | awk '{print $2}' )"
		if [[ "$t" -gt "$max" ]]; then
			a=$i
			max=$t
		fi
	fi
done

echo "$a : $max"