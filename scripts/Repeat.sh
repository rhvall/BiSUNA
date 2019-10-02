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

# A single script to run 10 times bisuna

if [ "$#" -ne 1 ]
then
      echo "This script needs one argument, the number of repetitions"
      exit 1
fi

if [ "$1" -le 0 ]
then
      echo "It needs a positive number of repetitions"
      exit 1
fi

finish()
{
    procs="$(jobs -p)"
    echo "Kill: $procs"
    # Ignore process that are already dead
    kill $procs 2> /dev/null
}

BISUNACMD="./bisuna"
BISUNAINI="BiSUNAConf.ini"

for (( i=0; i<$1; i++ ))
do
   $BISUNACMD $BISUNAINI
done

BISUNAINI="BiSUNAConfProf.ini"

for (( i=0; i<$1; i++ ))
do
   $BISUNACMD $BISUNAINI
done
