//
//  CLNetworkKernel.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 15/5/19.
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

#ifndef NNetworkStruct_hpp
#define NNetworkStruct_hpp

#include "Configuration/PConfig.hpp"

enum NNeuronType: ushortT
{
    // The numbers here represent bits that can be activated
    // to pass along multiple types between ntID and ntControl
    // For example, ntID | ntThreshold would check for both types
    ntID = 16,
    ntActivation = 32,
    ntThreshold = 64,
    ntRandom = 128,
    ntControl = 256,
    ntRoll = 512,
    ntNumberNeuronType = 6,
    ///////////////////////////////////////////
    // ntInput and ntOutput are not considered
    // within the number of neuron type because
    // all network modules will have them
    ///////////////////////////////////////////
    ntCPrimer = 1024, // This is an special type of control that always activates, with
    // the principal characteristic of not receiving any connections to itself, when it does,
    // it is transformed into a simple ntControl neuron. Every structural mutation must
    // check if any of that happened in order to update this flag. It does not count as
    // a typical neuron type, for that reason is not before ntNumberNeuronType.
    ntInput = 1,
    ntOutput = 2
};

const vector<NNeuronType> ListedNNeuronType = {
    ntID, ntActivation, ntThreshold, ntRandom,
    ntControl, ntRoll, ntCPrimer, ntInput, ntOutput
};

enum NConnType: ushortT
{
    ctRecurrent,
    ctFeedForward,
    ctNumberConnType
};

// Predefined levels of firing rate
enum NFiringRate: ushortT
{
    frL1 = 1,
    frL7 = 7,
    frL49 = 49,
    frNumberFiringRate = 3
};

enum NMutationType: ushortT
{
    mtAddNeuron,
    mtRemoveNeuron,
    mtAddConnection,
    mtRemoveConnection,
    mtNumberMutationType
};

//------------------------------------------------
//------------------------------------------------
//------------------------------------------------

struct NNeuron
{
    ushortT nID;
    NFiringRate firingRate;
    NNeuronType nType;
    
    NNeuron(const ushortT neuronID = OUT_INDEX,
             const NFiringRate fr = frL1,
             const NNeuronType nt = ntID):
        nID(neuronID), firingRate(fr), nType(nt) {};
};

struct NConnection
{
    ushortT fromNID;
    ushortT toNID;
    ushortT neuroMod;    //-1 for inactive, for >0 it is active and represents the id of the neuron whose response is used as weight
    ParameterType weight;
    
    // A new connection will not be pointed by or to a neuron (fromID, toID) or have a valud neuro modulated index
    NConnection(const ushortT from = OUT_INDEX,
                 const ushortT to = OUT_INDEX,
                 const ushortT mod = OUT_INDEX,
                 const ParameterType cWeight = 0):
    fromNID(from), toNID(to), neuroMod(mod), weight(cWeight) {};
};

struct NNeuronState
{
    ParameterType state;
    ParameterType prevState;
    ParameterType excitation;
    boolT isFired;
    
    NNeuronState(): state(0), prevState(0), excitation(0), isFired(false) { };
};

struct NConnState
{
    ushortT connID;
    NConnType connType;
    NConnType prevConnType;
    
    NConnState(const ushortT cID = OUT_INDEX,
                const NConnType ct = ctRecurrent,
                const NConnType prev = ctRecurrent):
    connID(cID), connType(ct), prevConnType(prev) {};
};

struct NNetworkParams
{
    ushortT networkID; // Corresponding network ID
    ushortT nInputs; // How many neurons are inputs;
    ushortT nOutputs; // How many neurons are outputs;
    
    NNetworkParams(const ushortT netID = 0,
                    const ushortT inputs = 0,
                    const ushortT outputs = 0):
        networkID(netID), nInputs(inputs), nOutputs(outputs) {};
};

#endif
