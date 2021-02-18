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
    echo "This script goes through each folder inside and applies the passed parameter"
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
