#!/bin/bash

mass=(1 2 3 4 5 6 7 8 9 10)

arr=()

N=$1

i=0

while [[ ${#arr[@]} -le $N ]]
do
        for j in $mass
        do
                arr+=($j)
        done

        i=$(($i+1))
done