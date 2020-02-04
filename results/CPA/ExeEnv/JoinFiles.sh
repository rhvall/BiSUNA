#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "This script reads txt files inside folders and merge values into a single txt"
    echo "This script needs 2 parameters:"
    echo "1.- Folder to apply an script"
    echo "2.- Foldet to place results"
    exit 1
fi

checkFolder() {
    if [[ ! -d "$1" ]]; then
        echo "$1 does not exist, script will finish"
        exit 1
    fi
}

FOLDER=$1
TOFOLDER=$2
CURRENT=$(pwd)

checkFolder $FOLDER
checkFolder $TOFOLDER

[[ "${FOLDER}" != */ ]] && FOLDER="${FOLDER}/"
[[ "${TOFOLDER}" != */ ]] && TOFOLDER="${TOFOLDER}/"

TAILLOG="2-tailLog.txt"
BESTLOG="3-bestLog.txt"
TIMESUM=$TOFOLDER"allTimeDiff.txt"
TBSUM=$TOFOLDER"allTailBest.txt"
BESTSUM=$TOFOLDER"allBest.txt"

TEMPBST=()

[[ ! -f $TIMESUM ]] && touch $TIMESUM
[[ ! -f $TBSUM ]] && touch $TBSUM
[[ ! -f $BESTSUM ]] && touch $BESTSUM

for ELEM in $FOLDER*; do
    if [[ -d $ELEM ]]; then
        cd $ELEM
        if [[ -f $TAILLOG ]]; then
            cat $TAILLOG | grep TimeDiff | awk '{print $2}' >> $TIMESUM
            cat $TAILLOG | grep "Last best score" | awk '{print $4}' >> $TBSUM
        fi
        
        [[ "${ELEM}" != */ ]] && ELEM="${ELEM}/"
        [[ -f $BESTLOG ]] && TEMPBST+=( $ELEM$BESTLOG )
    fi
done

paste -d "\n" ${TEMPBST[@]} > $BESTSUM
cd $CURRENT
