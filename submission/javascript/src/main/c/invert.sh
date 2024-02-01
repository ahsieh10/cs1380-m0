#!/bin/bash
# Invert index to create a mapping from terms to URLs containing that term
# The details of the index structure can be seen in the test cases


<<<<<<< HEAD
while read -r line; do
=======
while read line; do
>>>>>>> parent of 33bde97 (made lint fixes)
    delimiter="|"

    IFS="$delimiter" read -ra strings <<< "$line"

    gram="${strings[1]}"
    count="${strings[0]}"

    echo "$gram" "|" "$count" "|" "$1"
<<<<<<< HEAD
done < <(cat | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | sort | uniq -c | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | sed "s/ / | /g" | sed "s/\t/ / g")
=======
done < <(cat | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' | sort | uniq -c | cut -d " " -f 4-5 | sed "s/ /|/g" | sed "s/\t/ /g")
>>>>>>> parent of 33bde97 (made lint fixes)
