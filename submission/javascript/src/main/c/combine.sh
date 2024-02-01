#!/bin/bash
#
# Combine terms to create  n-grams (for n=1,2,3) and then count and sort them

vocab=()

<<<<<<< HEAD
while read -r word; do
=======
while read word; do
>>>>>>> parent of 33bde97 (made lint fixes)
    vocab+=("$word")
done

length=${#vocab[@]}

for ((j=0; j<length; j++));
do
    echo "${vocab[j]}"
done

for ((j=0; j<length-1; j++));
do
<<<<<<< HEAD
    #printf "${vocab[j]}\t""${vocab[j+1]}\n"
    first=${vocab[j]}
    second=${vocab[j+1]}
    printf '%s\t%s\n' "$first" "$second"
=======
    printf "${vocab[j]}\t""${vocab[j+1]}\n"
>>>>>>> parent of 33bde97 (made lint fixes)
done

for ((j=0; j<length-2; j++));
do
<<<<<<< HEAD
    first=${vocab[j]}
    second=${vocab[j+1]}
    third=${vocab[j+2]}
    printf '%s\t%s\t%s\n' "$first" "$second" "$third"
=======
    printf "${vocab[j]}\t""${vocab[j+1]}\t""${vocab[j+2]}\n"
>>>>>>> parent of 33bde97 (made lint fixes)
done