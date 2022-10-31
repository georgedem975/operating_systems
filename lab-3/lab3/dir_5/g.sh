#!/bin/bash

while true; do
    read Line
    echo $Line > pipe

    if [[ $Line == "QUIT" ]]; then
        exit 0;
    fi

    if [[ $Line != "+" ]] && [[ $Line != "*" ]] && [[ $Line =~ [0-9]* ]]; then
        exit 0;
    fi
done
