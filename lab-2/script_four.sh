#!/bin/bash

: > answer.txt

for i in $(ps xao pid);
do
	if [ -f /proc/$i/status ] && [ -f /proc/$i/sched ]; then
		echo "ProcessID=$i : Parent_ProcessID=$(grep "PPid" "/proc/$i/status" | awk '{ print $2 }' ) : Average_RunningTime=$(echo "scale=0; $(grep "sum_exec_runtime" "/proc/$i/sched" | awk '{print $3}') / $(grep "nr_swithes" "/proc/$i/sched" | awk '{print $3}')" | bc )" >> answer.txt
	fi
done