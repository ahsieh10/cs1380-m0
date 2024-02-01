#!/bin/bash
#
# Combine terms to create  n-grams (for n=1,2,3) and then count and sort them

vocab=()

while read word; do
    vocab+=("$word")
done

length=${#vocab[@]}

for ((j=0; j<length; j++));
do
    echo "${vocab[j]}"
done

for ((j=0; j<length-1; j++));
do
    printf "${vocab[j]}\t""${vocab[j+1]}\n"
done

for ((j=0; j<length-2; j++));
do
    printf "${vocab[j]}\t""${vocab[j+1]}\t""${vocab[j+2]}\n"
done