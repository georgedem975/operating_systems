#!/bin/bash


for ((i=1; i<30; i++))
do
        ./newmem.bash 2600000 &
        echo $i
        sleep 1
done