#!/bin/bash

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