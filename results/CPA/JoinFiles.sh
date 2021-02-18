#!/bin/bash

# //////////////////////////////////////////////////////////
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3 or later.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
# //////////////////////////////////////////////////////////

if [ "$#" -ne 2 ]; then
    echo "This script reads txt files inside folders and merge values into a single txt"
    echo "This script needs 2 parameters:"
    echo "1.- Folder to apply an script"
    echo "2.- Folder to place results"
    exit 1
fi

checkFolder() {
    if [[ ! -d "$1" ]]; then
        echo "$1 does not exist, script will finish"
        exit 1
    fi
}

absPath() {
    cd "$(dirname '$1')" &> /dev/null && printf "%s/%s" "$PWD" "${1##*/}";
}

FOLDER=$1
TOFOLDER=$2
CURRENT=$(pwd)

checkFolder $FOLDER
checkFolder $TOFOLDER

FOLDER=$(absPath $FOLDER)
TOFOLDER=$(absPath $TOFOLDER)

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
        # echo $ELEM
        cd $ELEM
        if [[ -f $TAILLOG ]]; then
            cat $TAILLOG | grep TimeDiff | awk '{print $2}' >> $TIMESUM
            cat $TAILLOG | grep "Last best score" | awk '{print $4}' >> $TBSUM
        fi

        [[ "${ELEM}" != */ ]] && ELEM="${ELEM}/"
        [[ -f $BESTLOG ]] && TEMPBST+=( $ELEM$BESTLOG )
    fi
done

# echo $TEMPBST
paste -d "\n" ${TEMPBST[@]} > $BESTSUM
cd $CURRENT


# j=0;val=0;while IFS= read -r line; do val=$((val + line)); let "j++"; done < allTimeDiff.txt; echo "\nMean value: $((val / j))" >> allTimeDiff.txt;
