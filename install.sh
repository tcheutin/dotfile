#!/bin/bash

#Installation script for the sym link of the conf file
echo "Installation of the configuration files"
CURRENT_DIR=$(pwd)
for file in "$CURRENT_DIR"/* 
do
    if [ ! -x "$file" ] || [ -d "$file"  ]
    then
        IN="$file"
        OUT="$HOME/.${file##*/}"
        ln -sFfv "$IN" "$OUT"
    fi
done
