#!/bin/bash
readarray -t files < files.txt
for file in "${files[@]}"; do
        touch "$file"
done
