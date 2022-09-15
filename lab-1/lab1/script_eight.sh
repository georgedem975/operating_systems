#!/bin/bash

echo | sort -nk3 -t':' /etc/passwd | cut -d ':' -f 1,3