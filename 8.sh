#!/bin/bash

lc_values=($(env | grep '^LC_' | cut -d= -f2))

uniq_values=($(printf "%s\n" "${lc_values[@]}" | sort -u))

if [ ${#uniq_values[@]} -gt 1 ]; then
    echo "LC variables have different values" >&2
    exit 1
fi

exit 0
