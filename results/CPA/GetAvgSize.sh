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


# echo "About to average over dat files with folder:"$1

FOLDER=$1
if [[ ! -d "$FOLDER" ]]; then
    echo "$FOLDER does not exist, script will finish"
    exit 1
fi

ls -alh $FOLDER | grep "dat" | awk '{print $5}' | sed "s/K//" | awk 'BEGIN {n=0}{s += $1; n++} END {print s/n}'

# for i in ConfIni/U*; do for j in $i/Trial*; do ./GetAvgSize.sh $j > $j/DatAvg.txt; done; done
# for i in ConfIni/U*; do TV=0; for j in $i/Trial*; do VAL=$(./GetAvgSize.sh $j); TV=$(($TV + $VAL)); done; echo $(($TV / 5)); done;
# for i in ConfIni/U*; do TV=0; for j in $i/Trial*; do VAL=$(./GetAvgSize.sh $j); TV=$(($TV + $VAL)); done; echo "Average KB:"$i - $(($TV / 5)) >> ConfIni/AvgDat.txt; done;
