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

### This script will set up an environment to run OpenAI gym on a new VM running
### Ubuntu 18.04. It will install all components necessary to replicate an
### environment to run the gym correctly on a VM. Also, it will will install the
### gym-uds dependencies needed to communicate with other executions (C++, Haskell)
### Consider that Python3 is installed along with pip3

### Install development tools
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y build-essential libtool pkg-config curl git python3-dev python3-pip zlib1g-dev libjpeg-dev cmake swig python-pyglet python3-pip python3-opengl libboost-all-dev libsdl2-dev libosmesa6-dev patchelf ffmpeg xvfb autoconf automake make g++ unzip
sudo apt install -y clang libc++-dev libgflags-dev libgtest-dev libgl1-mesa-dev libharfbuzz0b libpcre16-3 xvfb

### Install OpenCL dev headers
sudo apt install ocl-icd-opencl-dev -y

### Install gPRC
git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc
cd grpc/
git submodule update --init
make && sudo make install
### Install Protobuf
cd third_party/protobuf
make && sudo make install
sudo ldconfig
cd ~
# IF an error with "dynamic_init_dummy_google_2fprotobuf", remove -Werror from Makefile line #356
# https://github.com/protocolbuffers/protobuf/issues/5315#issuecomment-444723455
# https://github.com/grpc/grpc/issues/16739#issuecomment-445442067


### Install OpenAI Gym
sudo python3 -m pip install --upgrade pip
# There was a problem with a different gym version when interacting with roboschool,
# for that reason, it explicitely asks for 0.12.1
# ref: https://github.com/openai/roboschool/issues/191
sudo python3 -m pip install gym==0.12.1
sudo python3 -m pip install roboschool

# if results are going to be copied to S3:
# sudo apt-get -y install s3cmd
# s3cmd --configure
# s3cmd put LOGFILE.txt s3://S3BUCKET/


### Install grpcio
sudo python3 -m pip install grpcio
sudo python3 -m pip install grpcio-tools

### Install gym-uds-api
git clone https://github.com/rval735/gym-uds-api/
cd gym-uds-api
./build.sh
cd binding-cpp/
make
cd ~

### NOTE!! If the compiler complains when trying to copile the
### c++ example (gym-uds-client), use the MakeFile that is located
### on the "src" folder to create all files: headers, pn and binary

### install BiSUNA
git clone git@github.com:rval735/bisunaocl.git
cd bisunaopencl
make

### Run python OpenAI Gym:
python3 gym-uds-server.py 'MountainCar-v0' 'unix:///tmp/gym-uds-socket'
# "MountainCar-v0" is the environment ID and "unix..." the socket to be used
# ID is necessary, the other is not.