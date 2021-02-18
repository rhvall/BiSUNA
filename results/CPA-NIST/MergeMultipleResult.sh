#!/bin/zsh

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

### Bring all "results.txt" files into a single SumResult inside *Trial* folders
ORFILE="SumResult.txt"
FF=(U3 U4 U5)
# for i in $(find . -type d -name "*Trial*"); do
for i in ${FF[@]}; do
    pushd $i
    ARR=($(find . -type f -name "results.txt" | sort -k 1.9 -n))
    HEADER=$(cat ${ARR[1]} | awk -F ',' 'BEGIN{ORS=","}{print $1}')
    echo "File,"${HEADER: :-1} > $ORFILE
    for j in ${ARR[@]}; do
        FNAME=${${j%/*}##*/}
        FFNAME=${${${j%/*}%/*}##*/}
        RES=$(awk -F ',' 'BEGIN{ORS=","}{print $2}' $j)
        echo $FFNAME-$FNAME,${RES: :-1} >> $ORFILE
    done
    popd
done

### Bring all "results.txt" files into a single SumResult inside *bin folders
# ORFILE="SumResult.txt"
# for i in $(find . -type d -name "*bin"); do
#     pushd $i
#     ARR=($(find . -type f -name "results.txt" | sort -k 1.9 -n))
#     HEADER=$(cat ${ARR[1]} | awk -F ',' 'BEGIN{ORS=","}{print $1}')
#     echo "File,"${HEADER: :-1} > $ORFILE
#     for j in ${ARR[@]}; do
#         FNAME=${${j%/*}##*/}
#         RES=$(awk -F ',' 'BEGIN{ORS=","}{print $2}' $j)
#         echo $FNAME,${RES: :-1} >> $ORFILE
#     done
#     popd
# done

#### Previous ####
# i="."
# for i in $(find . -type d -name "*bin"); do
#     pushd $i
#     FF=$i/$ORFILE
#     FST=1
#     ARR=($(find $i -type f -name "results.txt" | sort -k 1.9 -n))
#     for j in ${ARR[@]}; do
#         FNAME=${${j%/*}##*/}
#         echo $j - $FNAME
#         if [[ $FST == 1 ]]; then
#             echo "Attribute,"$FNAME > $FF
#             FST=0
#         else
#             awk -v P=$FNAME 'NR==1{printf "%s,%s", $0, P}' $FF > temp
#             mv temp $FF
#         fi
#     done
#     popd
# done;
