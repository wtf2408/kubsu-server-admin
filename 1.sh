#!/bin/bash

# Проверка аргументов
if [ $# -ne 2 ]; then
    echo "Usage: $0 <output_file> <duration_seconds>"
    exit 1
fi

OUTPUT_FILE="$1"
DURATION="$2"

END_TIME=$((SECONDS + DURATION))

while [ $SECONDS -lt $END_TIME ]
do
    TIMESTAMP=$(date +"%d.%m.%y %H:%M")
    LOAD=$(cat /proc/loadavg)

    echo "$TIMESTAMP = $LOAD" >> "$OUTPUT_FILE"

    sleep 1
done
