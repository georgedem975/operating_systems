#!/bin/bash

grep -E "^[0-9]|:|,]+[[:space:]]+INFO" /var/log/anaconda/syslog/ > info.log