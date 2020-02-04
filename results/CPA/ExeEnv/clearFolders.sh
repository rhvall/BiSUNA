#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "This script goes throu each folder inside and applies the passed parameter"
    echo "This script needs 2 parameters:"
    echo "1.- Folder to apply an script"
    echo "2.- Path to the script to be executed in each folder"
    exit 1
fi

checkFile() {
    if [[ ! -f "$1" ]]; then
        echo "$1 does not exist, script will finish"
        exit 1
    fi
}

checkFolder() {
    if [[ ! -d "$1" ]]; then
        echo "$1 does not exist, script will finish"
        exit 1
    fi
}

FOLDER=$1
SCRIPT=$2

checkFolder $FOLDER
checkFile $SCRIPT
 
[[ "${FOLDER}" != */ ]] && FOLDER="${FOLDER}/"

for ELEM in $FOLDER*; do
    if [[ -d $ELEM ]]; then
        [[ "${ELEM}" != */ ]] && ELEM="${ELEM}/"
        for INFOLDER in $ELEM*; do
            if [[ -d $INFOLDER ]]; then
                echo "To apply $SCRIPT to $INFOLDER"
                ./$SCRIPT $INFOLDER
            fi
        done
    fi
done