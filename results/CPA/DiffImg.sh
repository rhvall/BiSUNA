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
    echo "Read all images in a folder, then compare them to a reference image"
    echo "This script needs 2 parameters:"
    echo "1.- Reference image file"
    echo "2.- Folder with image files"
    exit 1
fi

FOLDER=$2

[[ "${FOLDER}" != */ ]] && FOLDER="${FOLDER}/"


j=0
for i in $FOLDER*; do
    magick compare -verbose -metric PSNR $1 $i $FOLDER"diff"$j".png"
    let "j++"
done
