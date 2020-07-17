#!/bin/bash

ENVS=(MountainCar-v0 Roulette-v0 NChain-v0 Copy-v0 DuplicatedInput-v0)
COUNT=(1 2 3 4 5)
for j in ${ENVS[@]}; do
    for i in ${COUNT[@]}; do
        echo "Running: "$j "," $i
        time python3 DeepQNet.py $j > $i$j.txt
    done
done
