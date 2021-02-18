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
