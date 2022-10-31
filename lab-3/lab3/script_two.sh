#!/bin/bash

echo "sh script_one.sh" | at now +1 minute; cd -; tail -n0 -f ~/report &