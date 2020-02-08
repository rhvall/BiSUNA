#!/bin/bash

echo "About to split log file:"$1

FILE=$1
if [[ -f "$FILE" ]]; then
    echo "$FILE exist"
else
    echo "$FILE does not exist, script will finish"
    exit 1
fi

if [ ! ${FILE: -4} == ".txt" ]; then
    echo "$FILE does not have \"txt\" extension, script will finish"
    exit 1
fi

DIR=$(dirname "${FILE}")
BSTABSTR="OnlyBest.txt"
HEADSTR="LogHeader.txt"
TAILSTR="LogTail.txt"
echo "About to write results to $DIR"

cat $FILE | grep "Best,A&B" > $DIR/$BSTABSTR
head -n 100 $FILE > $DIR/$HEADSTR
tail -n 100 $FILE > $DIR/$TAILSTR