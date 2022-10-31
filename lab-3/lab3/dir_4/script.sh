#!/bin/bash

./first_process.sh &

first_pid=$!

./second_process.sh &

second_pid=$!

./third_process.sh &

third_pid=$!

#top -o %CPU -p $first_pid,$second_pid,$third_pid

cpulimit -k -r -s -b -l 1 -p $first_pid
cpulimit -k -r -s -b -l 1 -p $second_pid

#renice -n +19 -p $first_pid

kill $third_pid

top -o %CPU -p $first_pid,$second_pid,$third_pid