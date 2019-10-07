//
//  OCLBridge.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 2/8/19.
//  Copyright © 2019 R. All rights reserved.
//

// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

#ifndef OCLBridge_hpp
#define OCLBridge_hpp

#include <stdio.h>
#include <array>
#include "RLAgent/UnifiedNeuralModel.hpp"
#include "Kernels/CLNetworkStruct.h"
#include "OpenCLUtils.hpp"

struct CLUNM
{
    UNMConfig conf;
    NNoveltyMap nmap;
    vector<CLNeuron> clNeurons; // Neurons
    vector<CLConnection> clConns; // Connections
    vector<ushortT> clNetSt; // NetworkState
    static const ushortT clNetStSize = 8;
};

struct CLUNMMem
{
    cl_mem memNeurons;
    cl_mem memConns;
    cl_mem memSt;
    
    CLUNMMem(cl_context ctx, CLUNM &clUNM);
    ~CLUNMMem();
};

struct OCLBridge
{
    static CLNeuron toCLNeuron(const NNeuron &n, const NNeuronState &nSt);
    static pair<NNeuron, NNeuronState> fromCLNeuron(const CLNeuron &clN);
    static CLConnection toCLConnection(const NConnection &c, const NConnState &cst);
    static pair<NConnection, NConnState> fromCLConnection(const ushortT &cID, const CLConnection &clC);
    static CLUNM toCLUNM(const UnifiedNeuralModel &unm);
    static UnifiedNeuralModel fromCLUNM(const CLUNM &clUNM);
};
#endif /* OCLBridge_hpp */
