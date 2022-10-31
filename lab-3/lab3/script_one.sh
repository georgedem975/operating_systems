#!/bin/bash

d=$(date +'%d.%m.%g %R')

cd /home; mkdir test && { echo "catalog test was created successfully" > ~/report ; cd /home/test ; touch / home/test/$d ; }
ping -c 1 www.net_nikogo.ru || echo "$d error" >> ~/report