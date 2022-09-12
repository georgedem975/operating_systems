#!/bin/bash

PS3='Please enter number of redactor: '
options=("nano" "vim" "links" "exit")
select opt in "${options[@]}
do
	case $opt in
		"nano")
			nano
			;;
		"vim")
			vi
			;;
		"limks")
			links
			;;
		"exit")
			break
			;;
		*) echo "invalid option $REPLY";;
	esac
done