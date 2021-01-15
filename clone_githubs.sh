#!/bin/bash
input=$1
while IFS= read -r line
do
  git clone "$line"
done < "$input"
