#!/bin/bash

ps aux --sort +start_time | awk '{print $2}' | tail -1