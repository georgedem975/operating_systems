#!/bin/bash

man bash | cat | tr \ ? '\n'? | tr -c -d '[:alpha:]\n' | tr '[:upper:]' '[:lower:]' | \
awk '{ if (length($0) >= 4) print }' | sort | uniq -c | sort -rn | head -3