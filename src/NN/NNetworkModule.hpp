//
//  NNetworkModule.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 22/5/19.
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

#ifndef NNetworkModule_hpp
#define NNetworkModule_hpp

#include "NNetworkStruct.hpp"
#include <functional>

class NNetworkModule
{
public:
    NNetworkModule(const ushortT netID = 0, const ushortT numInputs = 0, const ushortT numOutputs = 0);
    ~NNetworkModule();
    
    NNetworkParams nParams;
    vector<NNeuron> nNeurons;
    vector<NConnection> nConns;

    // TODO!!
    // Improvements:
    // - Use networkID as the spectrum, possibly including connections
    // - Separate nNeurons given their neuronType
    
    void structuralMutation();
};

struct NNMFunction
{
    static void addNeuron(NNetworkModule *netModule);
    static void weightMutation(NConnection *conn);
    static CLMutationType getMutationType();
    static NNeuron randomNeuron(const ushortT neuronID);
    static NConnection randomConnection(const vector<NNeuron> neurons);
    static void addConnection(const vector<NNeuron> neurons, vector<NConnection> *conns);
    
    static vector<NNeuron> interfaceNeurons(const ushortT numInputs, const ushortT numOutputs);
    static NNeuron deleteNeuron(const ushortT nID, vector<NNeuron> &neurons);
    static void deleteNeuronConnections(const ushortT nID, vector<NConnection> &conns);
    static void deleteConnection(const ushortT connPos, vector<NConnection> *conns);
    static vector<ushortT> filterNeurons(const vector<NNeuron> &neurons, function<bool(const NNeuron &)> conditional);
    static void updatePrimers(const vector<NConnection> &conns, vector<NNeuron> *neurons);
};

#endif /* NNetworkModule_hpp */