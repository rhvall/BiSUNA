#!/bin/zsh

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

function ss {
    mkdir $1
    ../bisunaSt ../BiSUNAConf.ini $2 $1/
    cd $1
    mkdir pngs
    for i in *dot; do dot -Tpng $i > pngs/$i.png; done;
    # rm *dot
    cd ..
}

[ -d Test ] && rm -R Test
mkdir Test
cd Test
tar zxvf Test.tar.gz
# autoload zmv
cp $(ls -tr alices* | tail -n 1) alicesCPAbisuna.dat # zmv 'alicesCPAbisunaGen*' alicesCPAbisuna.dat
cp $(ls -tr bobs* | tail -n 1) bobsCPAbisuna.dat # zmv 'bobsCPAbisunaGen*' bobsCPAbisuna.dat
cp $(ls -tr eves* | tail -n 1) evesCPAbisuna.dat # zmv 'evesCPAbisunaGen*' evesCPAbisuna.dat
mkdir images
../bisunaSt ../BiSUNAConf.ini alicesCPAbisuna.dat bobsCPAbisuna.dat ../TestImage.bmp images/Test.bmp > log.txt
cat log.txt | grep ".bmp" | awk -F "," '{print $1 " " $2 " " $3 " " $4}'
rm Test.tar.gz
ss "dotAlices" "alicesCPAbisuna.dat"
ss "dotBobs" "bobsCPAbisuna.dat"
ss "dotEves" "evesCPAbisuna.dat"
../bisunaSt ../BiSUNAConf.ini alicesCPAbisuna.dat bobsCPAbisuna.dat ../TestImage.bmp images/BlockTest.bmp 100 >> log.txt

#a=100;b = np.arange(a); b = (b - np.mean(b)) / (np.std(b) * len(b));c = np.arange(a);c = (c - np.mean(c)) / np.std(c);np.correlate(b,c);
