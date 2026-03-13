#!/bin/bash

if [ "$FOO" = "5" ] && [ "$BAR" = "1" ]; then
    echo "Script execution is forbidden: FOO=5 and BAR=1"
    exit 1
fi

FILENAME="fix.txt"

echo "Waiting file in $(pwd)..."

while [ ! -f "$FILENAME" ]; do
    sleep 1
done

echo "File $FILENAME appeared!"
