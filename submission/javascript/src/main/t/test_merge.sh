#!/bin/bash

T_FOLDER=${T_FOLDER:-t}
R_FOLDER=${R_FOLDER:-}

cd "$(dirname "$0")/..$R_FOLDER" || exit 1

DIFF=${DIFF:-diff}
<<<<<<< HEAD
DIFF_PERCENT=${DIFF_PERCENT:-0}
=======
>>>>>>> parent of 33bde97 (made lint fixes)

cat /dev/null > d/global-index.txt

files=("$T_FOLDER"/d/m{1..3}.txt)

for file in "${files[@]}"
do
    cat "$file" | c/merge.js d/global-index.txt > d/temp-global-index.txt
    mv d/temp-global-index.txt d/global-index.txt
done

<<<<<<< HEAD
if DIFF_PERCENT=$DIFF_PERCENT t/gi-diff.js <(sort d/global-index.txt) <(sort "$T_FOLDER"/d/m4.txt) > /dev/null;
=======
if $DIFF <(cat d/global-index.txt) <(cat "$T_FOLDER"/d/m4.txt) > /dev/null;
>>>>>>> parent of 33bde97 (made lint fixes)
then
    echo "$0 success: global indexes are identical"
else
    echo "$0 failure: global indexes are not identical"
fi
