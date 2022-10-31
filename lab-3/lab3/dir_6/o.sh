#!/bin/bash

echo $$ > .pid
A=1
operation="+"
usr1()
{
    operation="+"
}
usr2()
{
    operation="-"
}
term()
{
    echo "term"
    exit 0
}

trap 'term' SIGTERM
trap 'usr1' USR1
trap 'usr2' USR2
while true; do
    case $operation in
        "+")
            A=$(($A+2))
            ;;
        "*")
            A=$(($A*2))
            ;;
        esac
        echo "$A"
        sleep 5
done