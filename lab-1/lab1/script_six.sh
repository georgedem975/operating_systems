#!/bin/bash

grep -E "(II)|(WW)" /var/log/anaconda/X.log | \
sed 's/(II)/(Information)/' | \
sed 's/(WW)/(Warning)/' > temp_full.log

grep -E "(Warning)" /home/user/lab1/temp_full.log > /home/user/lab1/full.log

grep -E "(Information)" /home/user/lab1/temp_full.log >> /home/user/lab1/full.log

less /home/user/lab1/full.log