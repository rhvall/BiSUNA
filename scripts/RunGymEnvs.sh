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

# A single script to run multiple OpenAI Gym environments
# within one single file, instead of multiple consoles.
# It receives the environment ID and the number of instances
# to be created, numbers start at 0.
# https://unix.stackexchange.com/questions/55558/how-can-i-kill-and-wait-for-background-processes-to-finish-in-a-shell-script-whe


if [ "$#" -ne 2 ]
then
      echo "This script needs two arguments, Gym env ID and number of instances"
      exit 1
fi

if [ "$2" -le 0 ]
then
      echo "It needs a positive number of instances"
      exit 1
fi

finish()
{
    procs="$(jobs -p)"
    echo "Kill: $procs"
    # Ignore process that are already dead
    kill $procs 2> /dev/null
}

PYCMD="python3 gym-uds-server.py"
SOCKPATH="unix://tmp/gym-uds-socket"

for (( i=0; i<$2; i++ ))
do
   $PYCMD $1 $SOCKPATH$i &
done

trap 'finish' 2
echo 'Press <Ctrl+C> to kill...'
wait