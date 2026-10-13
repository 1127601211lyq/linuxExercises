#!/bin/bash

if [[ $# -lt 1 || $# -gt 2 ]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 1
fi

column=$1
file=${2:-/dev/stdin}

cut -d, -f "$column" "$file" | tail -n +2 | {
    sum=0
    n=0
    while read -r value; do
        sum=$(echo "$sum + $value" | bc -l)
        n=$((n + 1))
    done
    echo "$sum / $n" | bc -l
}
