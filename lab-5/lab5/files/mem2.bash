#!/bin/bash

: > report2.log

mass=(1 2 3 4 5 6 7 8 9 10)

arr=()

i=0

while :
do
        if [[ $(($i % 100000)) -eq 0 ]]; then
                echo ${#arr[@]} >> report2.log
        fi
        for j in $mass
        do
                arr+=($j)
        done

        i=$(($i+1))
done