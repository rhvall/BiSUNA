#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

FOLDERS=(U1 U2 U3 U4 U5)
DATAFOLDER=data/
INFILES=(e.bin pi.bin sha1.bin sqrt2.bin sqrt3.bin)

modifyFile() {
    # $1 is the INFILE Name
    # $2 folder where dat are
    # $3 Encryptor
    # $4 Decryptor
    EXTRAFILE="ExtraEncodeDecode.ini"
    INFILEPATTERN="InputFile"
    OUTFOLDERL="OutputFolder"
    ENCFILE="EncryptorFile"
    DECFILE="DecryptorFile"
    INF="$INFILEPATTERN = $DATAFOLDER$1"
    OUFF="$OUTFOLDERL = $2/$1/"
    ENF="$ENCFILE = $3"
    DEF="$DECFILE = $4"

    PATHREGEX="^.*$INFILEPATTERN.*$"
    perl -i -pe "s#$PATHREGEX#$INF#" $EXTRAFILE
    PATHREGEX="^.*$OUTFOLDERL.*$"
    perl -i -pe "s#$PATHREGEX#$OUFF#" $EXTRAFILE
    PATHREGEX="^.*$ENCFILE.*$"
    perl -i -pe "s#$PATHREGEX#$ENF#" $EXTRAFILE
    PATHREGEX="^.*$DECFILE.*$"
    perl -i -pe "s#$PATHREGEX#$DEF#" $EXTRAFILE
}

waitPress() {
    while [ true ] ; do
        read -t 3 -n 1
        if [ $? = 0 ] ; then
        # exit ;
            echo "Exe continue"
            break
        else
        echo "waiting for the keypress"
        fi
    done
}

for FOLDER in ${FOLDERS[@]}; do
    for INFILE in ${INFILES[@]}; do
        ALICE=$(ls $FOLDER/alice*)
        BOB=$(ls $FOLDER/bob*)
        mkdir -p $FOLDER/$INFILE/
        echo "About to modify: $INFILE @ $FOLDER with $ALICE, $BOB"
        modifyFile $INFILE $FOLDER $ALICE $BOB
        ./BiSUNAOpenCL Conf.ini > $FOLDER/$INFILE/log.txt
        # waitPress
    done
done

## Encrypt data
# openssl aes-256-cbc -salt -in data/e.bin -out enc.bin -k 12356
## Decrypt data
# openssl aes-256-cbc -salt -in enc.bin -out dec.bin -k 12356 -d

## Get the folder of the file
# $ filepath=/a/b/c/d/file
# $ echo ${${filepath%/*}##*/}
# > d

## Replace line break with comma and then two commas with line break
# replC(){perl -pe 's/ \n/,/g' $1 | perl -pe 's/,,/\n/g'}
# for i in $(find . -type f -name "results.txt"); do replC $i > $i.b; mv $i.b $i; done;
