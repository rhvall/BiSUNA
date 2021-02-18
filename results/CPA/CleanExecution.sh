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

if [ "$#" -ne 1 ]; then
    echo "This script needs 1 parameters:"
    echo "1.- Path to folder with dat, log and ini files"
    exit 1
fi

FOLDER=$1
[[ "${FOLDER}" != */ ]] && FOLDER="${FOLDER}/"

APRE="alicesCPA"
BPRE="bobsCPA"
EPPRE="evesCPA-PreTrain"
EPRE="evesCPAbisuna"

# echo "Removing dat files but last"
PREFIX=($APRE $BPRE $EPPRE $EPRE)

for PRE in ${PREFIX[@]}; do
    ISFIRST=true
    FILES=$(ls -tp $FOLDER$PRE*)

    [[ -z $FILES ]] && continue

    for FILE in $FILES; do
        if [ $ISFIRST = false ]; then
            # echo "It would remove $FILE"
            rm $FILE
        else
            # echo "Keeping: $FILE"
            ISFIRST=false
        fi
    done
done

BINEXE=$FOLDER"bisuna"
LOGTXT=$FOLDER"log.txt"
INIS=$FOLDER"*ini"

# [[ -f $BINEXE ]] && rm $BINEXE || echo "no bisuna in $BINEXE"
# [[ ! -z $(ls $FOLDER | grep ini) ]] && rm $INIS || echo "no ini files in $INIS"

if [[ -f $LOGTXT ]]; then
    head -n 100 $LOGTXT > $FOLDER"1-headLog.txt"
    tail -n 100 $LOGTXT > $FOLDER"2-tailLog.txt"
    cat $LOGTXT | grep "Best,A&B" > $FOLDER"3-bestLog.txt"
    #echo "It would remove $LOGTXT"
    rm $LOGTXT
fi
