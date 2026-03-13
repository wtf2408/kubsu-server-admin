#!/bin/bash

IFS=':' read -ra dirs <<< "$PATH"

for dir in "${dirs[@]}"; do
    # учитываем только существующие каталоги
    if [ -d "$dir" ]; then
        count=$(find "$dir" -maxdepth 1 -type f | wc -l)
        echo "$dir => $count"
    fi
done