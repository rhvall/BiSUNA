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

# In order to run and execute on a Linux environment,
# it needs to run the following commands:

sudo apt update -y
sudo apt install ocl-icd-opencl-dev -y

#######################################################
# If the computer running is an Intel, then install OpenCL runtime
# https://github.com/intel/compute-runtime/releases

mkdir neo
cd neo
wget https://github.com/intel/compute-runtime/releases/download/19.23.13131/intel-gmmlib_19.2.1_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/19.23.13131/intel-igc-core_1.0.8-2084_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/19.23.13131/intel-igc-opencl_1.0.8-2084_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/19.23.13131/intel-opencl_19.23.13131_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/19.23.13131/intel-ocloc_19.23.13131_amd64.deb

wget https://github.com/intel/compute-runtime/releases/download/19.23.13131/ww23.sum
sha256sum -c ww23.sum

sudo dpkg -i *.deb

#######################################################


## OpenCL in CenOS
# https://unix.stackexchange.com/questions/292630/how-to-install-opencl-in-centos-7-using-yum

sudo yum install opencl-headers -y
sudo yum provides '*/libOpenCL.so'
sudo yum install ocl-icd -y
sudo ln -s /usr/lib64/libOpenCL.so.1 /usr/lib/libOpenCL.so