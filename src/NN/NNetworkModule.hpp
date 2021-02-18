//
//  NNetworkModule.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 22/5/19.
//  Copyright © 2019 R. All rights reserved.
//

// //////////////////////////////////////////////////////////
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, version 3 or later.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.
// //////////////////////////////////////////////////////////

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
    static NMutationType getMutationType();
    static NNeuron randomNeuron(const ushortT neuronID);
    static NConnection randomConnection(const vector<NNeuron> neurons);
    static void addConnection(const vector<NNeuron> neurons, vector<NConnection> *conns);
    
    static vector<NNeuron> interfaceNeurons(const ushortT numInputs, const ushortT numOutputs);
    static NNeuron deleteNeuron(const ushortT nID, vector<NNeuron> &neurons);
    static void deleteNeuronConnections(const ushortT nID, vector<NConnection> &conns);
    static void deleteConnection(const ushortT connPos, vector<NConnection> *conns);
    static void updatePrimers(const vector<NConnection> &conns, vector<NNeuron> *neurons);
};

#endif /* NNetworkModule_hpp */
