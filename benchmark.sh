#!/bin/bash

directory="/home/ubuntu/hpcs-mini-project/img"


for file in "$directory"/*; do
  if [ -f "$file" ]; then
    ./main $file >> result.txt
  fi
done