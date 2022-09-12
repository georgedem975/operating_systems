#!/bin/bash

mydir=$(pwd)

if [[ $mydir == *"home"* ]]; then
	pwd
	echo 0
	exit 0
else
	echo "wrong directory"
	exit 1
fi