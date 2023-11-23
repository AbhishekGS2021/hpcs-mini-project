#!/bin/bash

directory="/home/ubuntu/1800"


for file in "$directory"/*; do
  if [ -f "$file" ]; then
    ./main $file >> result.txt
  fi
done

# for file in *.jpg; do     mv -- "$file" "$(mktemp --dry-run XXXXXXXX.jpg)"; done
# for file in *.jpeg; do     mv -- "$file" "$(mktemp --dry-run XXXXXXXX.jpeg)"; done
# for file in *.png; do     mv -- "$file" "$(mktemp --dry-run XXXXXXXX.png)"; done
# for file in *.JPG; do     mv -- "$file" "$(mktemp --dry-run XXXXXXXX.JPG)"; done