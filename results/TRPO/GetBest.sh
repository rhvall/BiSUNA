#!/bin/bash

for i in $(find . -name "Exe-*"); do
    BASE=$(dirname $i)
    NUMBER=${i//[^0-9]}
    cat $i | grep "rewards" | sed 's/^.*rewards = \[//' | sed 's/ .*//' | sed '/^[[:space:]]*$/d' | head -n 1000 > $BASE/Best$NUMBER.txt
done;


## Split file "EnvTests.txt" every time "Running" is found
# csplit -k -f "Exe-" EnvTests.txt /Running/ {4}

## Add txt extension to files
# for i in $(ls Exe*); do mv $i $i.txt; done

# cat MountainCar1.txt | grep "rewards*" | sed 's/^.*rewards = \[//' | sed 's/ .*//' > Best.txt
# tail -n 3  MountainCar-v0/Exe-1.txt | sed 's/[real|user|sys]//g' | tr -d '\t'

## This line goes trough every file inside a folder and removes every line that cointains "lo"
# for i in $(ls); do sed -i '' '/lo/d' $i; done;

# DIR=Envs/Roulette-v0
# FILE=EnvTestsRoulette.txt
# csplit -k -f "$DIR/Exe-" $FILE /Running/ {4}
# for i in $(ls $DIR/Exe*); do mv $i $i.txt; done

## Find files with "Exe" in its name and then replace all lines that have "lo" inside
# find EnvTrim/ -name "Exe*" -exec sed -i /lo/d {} ";"
