#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start_index=$1
end_index=$2

for i in $(seq $start_index $((end_index - 1))); do
    echo "$i, $((RANDOM % 100))"
done > inputFile

