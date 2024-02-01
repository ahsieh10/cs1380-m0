#!/bin/bash
# process text to convert it to maintain one word per 
# line, convert it to lowercase ascii, and remove any stopwords 
# useful commands: tr, iconv, grep

<<<<<<< HEAD
tr -cs A-Za-z '\n' | tr '[:upper:]' '[:lower:]' | grep -vxf d/stopwords.txt | cat
=======
tr -cs A-Za-z '\n' | tr A-Z a-z | grep -vxf d/stopwords.txt | cat
>>>>>>> parent of 33bde97 (made lint fixes)
