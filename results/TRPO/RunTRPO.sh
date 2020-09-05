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

# # docker run -v ~/Envs:/Envs/ -ti needle bash
# j=Roulette-v0
# i=0
# # python /needle/main.py --mode train --agent TRPO --batch_size 10 --iterations 10000 --env $j > Envs/$j/Exe-$i.txt
# docker run -ti -v ~/Envs:/Envs/ --rm needle bash -c "python /needle/main.py --mode train --agent TRPO --batch_size 10 --iterations 10000 --env $j"
#
#
# csplit -k -f "Roulette" EnvTests.txt /Running/
# for i in $(ls Roul*); do mv $i $i.txt; done
