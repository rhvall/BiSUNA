#!/bin/bash

for i in $(find . -name "Exe-*"); do
    BASE=$(dirname $i)
    NUMBER=${i//[^0-9]}
    cat $i | grep Best | awk '{print $3}' > $BASE/Best$NUMBER.txt
done;

#j=0;for i in $(ls Exe-*);do cat $i | grep Best | awk '{print $3}' > Best$j.txt;j=$((j+1)); done;

#cat Exe-1.txt | grep Best | awk '{print $3}'
