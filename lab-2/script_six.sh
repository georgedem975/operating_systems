#!/bin/bash

ps -o pid,%mem ax | sort -b -k2 -r | head -2