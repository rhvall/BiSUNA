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

SRC=$(pwd);
for i in $(find . -type d -name "images"); do
    cd $i;
    DECFILES=$(ls *Dec* | tr '\n' ' ')
    ENCFILES=$(ls *Enc* | tr '\n' ' ')
    BASENAME=$(pwd | awk -F '/' '{print $(NF-2)$(NF-1)}')
    # echo ../../$BASENAME"Dec.png"
    # echo ../../$BASENAME"Enc.png";
    convert $(echo $DECFILES) -append "../../$BASENAME""Dec.png";
    convert $(echo $ENCFILES) -append "../../$BASENAME""Enc.png";
    cd $SRC
done

## Change all bmp to png
# for i in $(find . -name "*bmp"); do NAME=${${i##*/}%.*}; FOLDER=${i%/*} ; convert $i "$FOLDER/$NAME.png"; rm $i; done;

## Change JPG to bmp
# convert thunder.jpg thunder.bmp
# sips -s format bmp thunder.jpg --out thunder.bmp

## Change resolution
# convert -resize 128x85 Thundergato.jpg Thundergato.bmp
