#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
    echo "Error: directory does not exist"
    exit 1
fi


for subdir in "$DIR"/*/; do

    [ -d "$subdir" ] || continue

    name=$(basename "$subdir")

    count=$(ls -1A "$subdir" | wc -l)

    echo "$count" > "$name"
done
