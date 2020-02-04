#!/bin/bash

# Dependencies
sudo apt install build-essential opencl-dev

# Compile
git clone https://github.com/rval735/bisunaocl
cd bisunaocl
git checkout SymmetricEncryption
make

# Execute
nohup ./bisuna resources/BiSUNAConf.ini > log.txt

# nohup ./bisuna BiSUNAConf.ini > log.txt &