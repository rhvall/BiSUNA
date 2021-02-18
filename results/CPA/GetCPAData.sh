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
    echo "This script goes through the folder passed as parameter and tries to obtain all information related to the CPA environment"
    echo "It expects folders with the following format: mainFolder/EnvName[1..n]/exe[1..n]/[*dat]&&log.txt"
    echo "Main folder is passed as the parameter"
    echo "EnvName are folders for the number of IO each execution"
    echo "exe are folders for each execution"
    echo "Inside exe folders, it will be dat files and a log.txt"
    echo "These are the steps applied:"
    echo "A) Read the last dat inside exe, cp to become alice/bob/eve"
    echo "B) With those a/b/e, create an img folder and compare it with AES"
    echo "C) Create folders for each a/b/e to place their dot and png files"
    echo "D) Obtain the best, head and tail results from log.txt"
    echo "E) Read summarized results inside each exe and obtain graphs for each EnvName"
    echo "F) Repeat from A) for each EnvName"
    echo "This script needs 1 parameters:"
    echo "1.- Folder with all required scripts and executables (bisuna, BisunaConf.ini, CleanExecution.sh, GraphIt, JoinFiles.sh, TestImage.bmp)"
    echo "2.- Folder to apply all steps"
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

absPath() {
    ORIGIN=$(pwd)
    cd $1
    FULLFOLDER=$(pwd)
    cd $ORIGIN
    echo $FULLFOLDER
}

makeDotPng() {
    mkdir $1
    $SCRSOURCE"bisuna" $SCRSOURCE"BiSUNAConf.ini" $2 $1/
    cd $1
    mkdir pngs
    for i in *dot; do dot -Tpng $i > pngs/$i.png; done;
    # rm *dot
    cd ..
}

cpABE () {
    cp $(ls -tr alices* | tail -n 1) alicesCPAbisuna.dat # zmv 'alicesCPAbisunaGen*' alicesCPAbisuna.dat
    cp $(ls -tr bobs* | tail -n 1) bobsCPAbisuna.dat # zmv 'bobsCPAbisunaGen*' bobsCPAbisuna.dat
    cp $(ls -tr eves* | tail -n 1) evesCPAbisuna.dat # zmv 'evesCPAbisunaGen*' evesCPAbisuna.dat
}

makeAESComp() {
    mkdir images
    $SCRSOURCE"bisuna" $SCRSOURCE"BiSUNAConf.ini" alicesCPAbisuna.dat bobsCPAbisuna.dat $SCRSOURCE"TestImage.bmp" images/Test.bmp > logAESComp.txt
}

makeFolderFull() {
    checkFolder $1
    local FOLDER=$(absPath $1)
    [[ "${FOLDER}" != */ ]] && FOLDER="${FOLDER}/"
    echo $FOLDER
}

SCRSOURCE=$(makeFolderFull $1)
FOLDER=$(makeFolderFull $2)
ORIGIN=$(pwd)

! [ -x "$(which dot)" ] && echo "Script needs Graphviz 'dot' to execute." && exit 1
! [ -x $SCRSOURCE"GraphIt" ] && echo "Script needs GraphIt to execute." && exit 1
! [ -x $SCRSOURCE"bisuna" ] && echo "Script needs bisuna to execute." && exit 1
! [ -f $SCRSOURCE"BiSUNAConf.ini" ] && echo "Script needs BiSUNAConf.ini to read configuration." && exit 1
! [ -f $SCRSOURCE"TestImage.bmp" ] && echo "Script needs TestImage.bmp to read when creating comparison with AES." && exit 1
! [ -f $SCRSOURCE"CleanExecution.sh" ] && echo "Script needs CleanExecution.sh to extract info from logs." && exit 1

TAILLOG="2-tailLog.txt"
BESTLOG="3-bestLog.txt"
AESLOG="logAESComp.txt"
ALLTIMEDIFF="allTimeDiff.txt"
ALLTAILBEST="allTailBest.txt"
ALLTAILEVEBEST="allTailEveBest.txt"
ALLDATSIZE="allDatSize.txt"
BESTSUM="allBest.txt"
AESSUMMARY="allAESSummary.txt"
TEMPBST=()
SUMBEST=0
SUMEVEBEST=0
SUMTIME=0
NUMELEMS=0

addToTailLog()
{
    if [[ -f $TAILLOG ]]; then
        [[ "${1}" != */ ]] && 1="${1}/"
        local TIMEDIFF=$(cat $TAILLOG | grep TimeDiff | awk '{print $2}')
        local BSTSCORE=$(cat $TAILLOG | grep "Last best score" | awk '{print $4}')
        local BSTEVESCORE=$(cat $TAILLOG  | grep "Best" | tail -n 1 | awk -F, {'print $4'})
        echo $BSTSCORE >> $1$ALLTAILBEST
        echo $TIMEDIFF >> $1$ALLTIMEDIFF
        echo $BSTEVESCORE >> $1$ALLTAILEVEBEST
        # echo "BSTEVESCORE: " $BSTEVESCORE
        SUMBEST=$(bc <<< "$SUMBEST + $BSTSCORE")
        SUMEVEBEST=$(bc <<< "$SUMEVEBEST + $BSTEVESCORE")
        SUMTIME=$(bc <<< "$SUMTIME + $TIMEDIFF")
        ((NUMELEMS++))
    fi
}

makeAESAnalysis() {
    if [[ -f $AESLOG ]]; then
        local TMP="TEMP.txt"
        grep ",100.000000," $AESLOG > $TMP
        local AESNCCLOG=$(tail -n 2 $AESLOG | head -n 1 | awk -F, '{print $2}')
        local AESBLOCNCCLOG=$(tail -n 1 $AESLOG | awk -F, '{print $2}')
        local LINECOUNT=$(wc -l $TMP | awk '{print $1}')
        LINECOUNT=$(($LINECOUNT - 2))
        local NCCALICE=$(head -n $LINECOUNT $TMP | awk -F, '{print $2}' | paste -sd+ - | bc)
        local AVGNCC=$(bc -l <<< "$NCCALICE / $LINECOUNT")
        local CURRENTNAME=$(basename $(pwd))
        [[ "${1}" != */ ]] && 1="${1}/"
        # echo $1
        echo "Execution: $CURRENTNAME" >> "$1$AESSUMMARY"
        echo "Resolved: $LINECOUNT" >> "$1$AESSUMMARY"
        echo "Average Resolved NCC: $AVGNCC" >> "$1$AESSUMMARY"
        echo "AES NCC: $AESNCCLOG" >> "$1$AESSUMMARY"
        echo "AES Block NCC: $AESBLOCNCCLOG" >> "$1$AESSUMMARY"
        echo "----------" >> "$1$AESSUMMARY"
        rm $TMP
    fi
}

for ELEM in $FOLDER*; do
    if [[ -d $ELEM ]]; then
        [[ "${ELEM}" != */ ]] && ELEM="${ELEM}/"
        for INFOLDER in $ELEM*; do
            if [[ -d $INFOLDER ]]; then
                cd $INFOLDER
                ##echo "Copying last dat file in $INFOLDER"
                cpABE
                ##echo "Making AES comparison"
                makeAESComp
                makeAESAnalysis $ELEM
                ##echo "Making Dot inside $INFOLDER"
                makeDotPng "dotAlices" "alicesCPAbisuna.dat"
                makeDotPng "dotBobs" "bobsCPAbisuna.dat"
                makeDotPng "dotEves" "evesCPAbisuna.dat"
                $SCRSOURCE"CleanExecution.sh" $INFOLDER
                # echo $INFOLDER
                addToTailLog $ELEM
                $SCRSOURCE"GraphIt" $BESTLOG
                # echo "inFolder: " $INFOLDER
                [[ -f $BESTLOG ]] && TEMPBST+=( $INFOLDER"/"$BESTLOG )
                cd $ORIGIN
            fi
        done
        RESAVGVAL=$(bc -l <<< "$SUMBEST / $NUMELEMS")
        echo "Average: "$RESAVGVAL >> $ELEM$ALLTAILBEST
        RESAVGVAL=$(bc -l <<< "$SUMEVEBEST / $NUMELEMS")
        echo "Average: "$RESAVGVAL >> $ELEM$ALLTAILEVEBEST
        RESAVGTIME=$(bc -l <<< "$SUMTIME / $NUMELEMS")
        RESAVGHR=$(bc -l <<< "$RESAVGTIME / 3600")
        echo "Average: $RESAVGTIME ($RESAVGHR hrs)" >> $ELEM$ALLTIMEDIFF

        du -k $(find $ELEM -type f -name "*dat") | awk '{print $1}' >> $ELEM$ALLDATSIZE
        WCDAT=$(wc -l $ELEM$ALLDATSIZE | awk '{print $1}')
        SUMDAT=$(paste -sd+ $ELEM$ALLDATSIZE | bc)
        AVGSIZE=$(bc <<< "$SUMDAT / $WCDAT")
        echo "Average DAT file: $AVGSIZE" >> $ELEM$ALLDATSIZE
        # echo "WC SUM: $WCDAT - $SUMDAT - $AVGSIZE"

        # echo "Path: " ${TEMPBST[*]}
        paste -d "\n" ${TEMPBST[*]} > $ELEM$BESTSUM
        cd $ELEM
        $SCRSOURCE"GraphIt" $BESTSUM
        rm $BESTSUM
        cd $ORIGIN
        SUMBEST=0
        SUMTIME=0
        SUMEVEBEST=0
        NUMELEMS=0
        TEMPBST=()
    fi
done

# du -k $(find CPA-U1-5/SE-CPA-U1 -type f -name "*dat") | awk '{print $1}'
# SS=$(ls *Dec* | tr '\n' ' ')
# convert $(echo $SS) -append all.png
