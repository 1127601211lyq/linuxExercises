#!/bin/bash

if [[ $# -ne 2 || ! $2 =~ ^[0-9]+$ ]]; then
    echo "usage: $0 <dir> <n>" >&2
    exit 1
fi

find "$1" -type f -size "+${2}c" -delete
