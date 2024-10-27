#!/bin/bash

###################
# Change Filename #
###################
# Categories
categories=(`ls ./public/categories`)
for d in "${categories[@]}"; do
  if [[ "$d" == *--* ]]; then
    new=$(printf "$d" | tr -s -)
    mv ./public/categories/$d ./public/categories/$new
  fi
done
