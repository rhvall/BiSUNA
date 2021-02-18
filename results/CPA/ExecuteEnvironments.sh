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

checkFile() {
    if [[ ! -f "$1" ]]; then
        echo "$1 does not exist, script will finish"
        exit 1
    fi
}

if [ "$#" -ne 4 ]; then
    echo "This script needs 4 parameters:"
    echo "1.- Path to BiSUNA exe file"
    echo "2.- Number of repetitions for each environment"
    echo "3.- Path to BiSUNA configuration"
    echo "4.- Path to Environment configuration folder"
    exit 1
fi

EXE=$1
REPETITIONS=$2
BISUNACONF=$3
CONFOLDER=$4
ORIGINALFOLDER=$(pwd)

echo "Checking BiSUNA binary: $EXE"

checkFile $EXE

echo "Checking BiSUNA config: $BISUNACONF"

checkFile $BISUNACONF

echo "Reading all ini config files from folder: $CONFOLDER"

[[ "${CONFOLDER}" != */ ]] && CONFOLDER="${CONFOLDER}/"

CPAFILES=`ls $CONFOLDER | grep ini`

CONFKEY="EnvironmentConf"
PATHREGEX="^.*\b($CONFKEY)\b.*$"

for FILE in $CPAFILES; do
    FPATH=$CONFOLDER$FILE
    checkFile $FPATH

    echo "Creating work folder"
    WORKFOLDER=$CONFOLDER${FILE%.*}
    mkdir $WORKFOLDER
    echo "Copy/move files to $WORKFOLDER"
    cp $EXE $WORKFOLDER
    cp $BISUNACONF $WORKFOLDER
    mv $FPATH $WORKFOLDER

    cd $WORKFOLDER

    LOCALBICONF=$(basename $BISUNACONF)
    LOCALEXE=$(basename $EXE)

    echo "Changing env config path in $LOCALBICONF"
    perl -i -pe "s#$PATHREGEX#$CONFKEY = $FILE#" $LOCALBICONF
    for ((REP=1; REP <= REPETITIONS; REP++)); do
        echo "Executing $REP out of $REPETITIONS: $LOCALEXE $LOCALBICONF"
        ./$LOCALEXE $LOCALBICONF > log.txt
        mkdir exe$REP
        mv log.txt *dat exe$REP
    done

    cd $ORIGINALFOLDER
done

# for i in $(seq 1 5); do cp SymmetricEncryptionCPA.ini envs/SE-CPA-U$i.ini; done
# j=1;for i in envs/*ini; do sed -i -e "s/TOREPLACE/$j/" $i; j=$((j+1)); done;
