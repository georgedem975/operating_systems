#!/bin/bash

x=1
y="+"

tail -f pipe |
while true; do
    read Line;
    case $Line in
        "QUIT")
            echo "kill"
            killall tail
            exit 0
            ;;
        "+")
            y="$Line"
            echo "+"
            ;;
        "*")
            y="$Line"
            echo "*"
            ;;
[0-9]*)
            case $y in
                "+")
                    x=$(($x+$Line))
                    echo "$x"
                    ;;
                "*")
                    x=$(($x*$Line))
                    echo "$x"
                    ;;
            esac
            ;;
        *)
            echo "exit"
            killall tail
            exit 0
            ;;
    esac
done