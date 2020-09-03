#!/bin/bash

ENVS=(MountainCar-v0 Roulette-v0 NChain-v0 Copy-v0 DuplicatedInput-v0)
COUNT=(1 2 3 4 5)
for j in ${ENVS[@]}; do
    for i in ${COUNT[@]}; do
        echo "Running: $j,$i"
        time docker run -v ~/Envs:/Envs/ --rm needle bash -c "python /needle/main.py --mode train --agent TRPO --batch_size 10 --iterations 10000 --env $j > Envs/$j/Exe-$i.txt"
    done
done
echo "Finished"
