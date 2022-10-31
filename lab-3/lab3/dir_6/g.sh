#!/bin/bash

while true; do
    read Line
    case $Line in
    "+")
        kill -USR1 $(cat .pid)
        ;;
    "-")
        kill -USR2 $(cat .pid)
        ;;
    "TERM")
        kill -SIGTERM $(cat .pid)
        ;;
    *)
        :
        ;;
    esac
done