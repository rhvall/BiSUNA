//
//  CLNetworkModule.cl
//  BiSUNAOpenCL
//
//  Created by RHVT on 21/2/20.
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

#include "CLNetworkModule.h"
#include "CLSupportFunctions.h"
#include "CLRandom.h"

#ifdef CONTINUOUS_PARAM
float weightPertubationFloat(tycheIState *state, float minMaxWeight, float weightPercentage, float cw)
{
    float variance = weightPercentage * cw;
    variance < 0 ? variance *= -1 : variance;
    float perturbation = randomFloatRange(state, -variance, variance);
    float weight = cw + perturbation;
    
    // Verify that weights are within the boundaries of possible values
    weight = min(minMaxWeight, weight);
    weight = max(-minMaxWeight, weight);
    
    return weight;
}
#else
ushort weightPertubationBin(tycheIState *state, ushort weightPercentage, ushort cw)
{
    ushort varianceP = cw << weightPercentage;
    ushort varianceN = cw >> weightPercentage;
    ushort minVar = min(varianceN, varianceP);
    ushort maxVar = max(varianceN, varianceP);
//    printf("CW: %i, WP: %i, N: %d, P: %d, diff: %i\n", cw, weightPercentage, varianceN, varianceP, varianceP - varianceN);
//    printf("Vars: %u - %u\n", minVar, maxVar);
    ushort perturbation = randomUShortRange(state, minVar, maxVar);
    // TODO!! Find the best perturbation operator for this case
    //    ParameterType weight = perturbation & cw;
    ushort weight = perturbation | cw;
    return weight;
}
#endif

// Weight mutation modifies the weight value of a connection according to a specified variance,
// where neuromodulation connections are ignored.
void weightMutation(tycheIState *state, CLConnection *conn)
{
    // If the connection neuromodulates, it will not be mutated
    if (conn->clNeuroMod != OUT_INDEX) {
        return;
    }

    // In case that the random result does exceed the change of mutation, then the
    // connection will not be mutated
    ushort roulette = randomUShortRange(state, 0, 100);
    if (roulette > CHANCE_OF_WEIGHT_MUT) {
        return;
    }

    CLPType cw = conn->clWeight;
#ifdef CONTINUOUS_PARAM
    conn->clWeight = weightPertubationFloat(state, MAXIMUM_WEIGHT, WEIGHT_MUTATION_CHANGE_PERCENTAGE, cw);
#else
    conn->clWeight = weightPertubationBin(state, WEIGHT_MUTATION_CHANGE_PERCENTAGE, cw);
#endif
}


void addNeuron(tycheIState *state, global CLCell *netModule)
{
    global CLNeuron *neurons = netModule->clNrs;
    global CLConnection *conns = netModule->clCons;
    ushort nID = netModule->nrsSize;
    ushort connSize = netModule->connSize;
    
    // if it fails here, clNeuron size has exceeded the number of elements addressable by ushort
//    assert(nID < INITIALBATCH);
    neurons[nID] = randomNeuron(state);
    neurons[nID].clNID = nID;
    CLConnection conn0 = randomConnection(state, nID);
    conn0.clFromNID = nID;
    CLConnection conn1 = randomConnection(state, nID);
    conn1.clToNID = nID;
    conns[connSize] = conn0;
    conns[connSize + 1] = conn1;
    netModule->nrsSize += 1;
    netModule->connSize += 2;
}

// This function removes all connections from/to/neuroMod referenced at "neuron"
// using its removeNID from a "conns" vector to remove any connections that had
// a relation to removeNID. updateNID is the nID that should be updated to the
// removeNID because it had a larger position and now every connection should
// point to the deleted connection position.
void deleteNeuronConnections(ushort removeNID, ushort updateNID, global CLConnection *conns, global ushort *connSize)
{
    ushort connLength = *connSize;
    uint i = 0;
    // Remove all connections to this or from this neuron
    while (i < connLength) {
        CLConnection conn = conns[i];
        ushort toMove = connLength - 1;
        if (conn.clFromNID == removeNID || conn.clToNID == removeNID || conn.clNeuroMod == removeNID) {
            conns[i].clCnType = conns[toMove].clCnType;
            conns[i].clPCnType = conns[toMove].clPCnType;
            conns[i].clFromNID = conns[toMove].clFromNID;
            conns[i].clToNID = conns[toMove].clToNID;
            conns[i].clNeuroMod = conns[toMove].clNeuroMod;
            conns[i].clWeight = conns[toMove].clWeight;
            connLength = toMove;
        }
        else {
            if (conn.clFromNID == updateNID) {
                conns[i].clFromNID = removeNID;
            }
            
            if (conn.clToNID == updateNID) {
                conns[i].clToNID = removeNID;
            }
            
            if (conn.clNeuroMod == updateNID) {
                conns[i].clNeuroMod = removeNID;
            }
            
            i++;
        }
    }
    
    *connSize = connLength;
}

// This function replaces a chosen neuron ID from the array, with
// the last known neuron. Ex: If nID = 4, and nrsSize = 10, then
// neuron 10, will be located in nID position 4, along with all its
// properties. The return value is the nID of the neuron replaced,
// or "OUT_INDEX" in any other case, which should be used to check if
// removal was possible, which should also update connections to that
// neuron.
ushort deleteNeuron(ushort nID, global CLCell *netModule)
{
    ushort replacedNID = OUT_INDEX;
    ushort neuronSize = netModule->nrsSize;
    // This case should not happen, in case it does, it will return immidiatelly
    if (nID == OUT_INDEX || nID > neuronSize) {
        return replacedNID;
    }

    ushort removeType = netModule->clNrs[nID].clFRNT;

    // If the neuron to be removed is an input/output, it will not make
    // any changes to the function
    // Neuron Input = 1, Output = 2
    if ((removeType & 1) | (removeType & 2)) {
        return replacedNID;
    }

    ushort toMove = neuronSize - 1;
    if (nID != toMove) {
        netModule->clNrs[nID].clNID = nID;
        netModule->clNrs[nID].clFRNT = netModule->clNrs[toMove].clFRNT;
        netModule->clNrs[nID].clFired = netModule->clNrs[toMove].clFired;
        netModule->clNrs[nID].clSt = netModule->clNrs[toMove].clSt;
        netModule->clNrs[nID].clPSt = netModule->clNrs[toMove].clPSt;
        netModule->clNrs[nID].clExc = netModule->clNrs[toMove].clExc;
        netModule->clNrs[toMove].clNID = OUT_INDEX;
        deleteNeuronConnections(nID, toMove, netModule->clCons, &(netModule->connSize));
    }
    
    netModule->nrsSize = toMove;
    return nID;
}


void addConnection(tycheIState *state, global CLCell *netModule)
{
    global CLConnection *conns = netModule->clCons;
    ushort nID = netModule->nrsSize;
    ushort connSize = netModule->connSize;
    conns[connSize] = randomConnection(state, nID);
    netModule->connSize += 1;
}

// Similar operation to "deleteNeuron", but with connections. It will take the last
// connection and move it to connPos when it is smaller than connSize
ushort deleteConnection(ushort connPos, global CLConnection *conns, ushort consLength)
{
    consLength -= 1;
    bool conditions = consLength == 0 || connPos > consLength || connPos == USHRT_MAX;
    if (conditions == true) {
        return consLength + 1;
    }

    if (connPos != consLength) {
        conns[connPos].clCnType = conns[consLength].clCnType;
        conns[connPos].clPCnType = conns[consLength].clPCnType;
        conns[connPos].clFromNID = conns[consLength].clFromNID;
        conns[connPos].clToNID = conns[consLength].clToNID;
        conns[connPos].clNeuroMod = conns[consLength].clNeuroMod;
        conns[connPos].clWeight = conns[consLength].clWeight;
    }
    
    return consLength;
}

void updatePrimers(global CLCell *netModule)
{
    uint nrsSize = netModule->nrsSize;
    uint connsSize = netModule->connSize;
    
    // For every neuron in the vector
    for (uint i = 0; i <= nrsSize; i++) {
        CLNeuron neuron = netModule->clNrs[i];
        // Check if it is primer or control
        bool isControlOrPrimer = neuron.clFRNT & (256 | 1024);
        if (isControlOrPrimer == 0) {
            // No control or primer, continue execution
            continue;
        }
        
        bool isPrimer = true;
        // Then go over all connections and check which ones points to this neuron
        for (uint j = 0; j < connsSize && isPrimer == true; j++) {
            CLConnection conn = netModule->clCons[j];
            bool toNID = conn.clToNID != neuron.clNID;
            bool recurrent = conn.clFromNID == neuron.clNID;
            if (toNID || recurrent) {
                continue;
            }
            
            // Primer neurons could potentially take input from any other type
            // of neurons but not from control or primers, that is what this
            // conditional checks.
            bool incomingNotCtrPrimer = !(netModule->clNrs[conn.clFromNID].clFRNT & (256 | 1024));
            isPrimer = isPrimer && incomingNotCtrPrimer;
        }
        
        // It is possible that some neurons were ntPrimer and then after a mutation
        // received a connection, then they are no longer a primer. On the other hand
        // it is possible that the inverse happened, then it must be checked both cases.
        ushort fr = neuron.clFRNT & 63488;
        netModule->clNrs[i].clFRNT = (isPrimer ? 1024 : 256) | fr;
    }
}

void structuralMutation(tycheIState *state, global CLCell *cell)
{
    ushort mt = randomMutationType(state);
    switch (mt) {
        case 0: // mtAddNeuron
        {
            addNeuron(state, cell);
            break;
        }
        case 1: // mtRemoveNeuron
        {
            ushort inoutNeurons = INPUT_SIZE + OUTPUT_SIZE;
            ushort neuronsSize = cell->nrsSize - 1;
            if (inoutNeurons >= neuronsSize) { break; }
            ushort removeNeuronIdx = randomUShortRange(state, inoutNeurons, neuronsSize);
            deleteNeuron(removeNeuronIdx, cell);
            break;
        }
        case 2: // mtAddConnection
        {
            addConnection(state, cell);
            break;
        }
        case 3: // mtRemoveConnection
        {
            ushort conLength = cell->connSize;
            ushort removeConnIdx = randomUShortRange(state, 0, conLength);
            cell->connSize = deleteConnection(removeConnIdx, cell->clCons, conLength);
            break;
        }
        default:
            // This case should never happen;
            printf("An error in function structuralMutation with an invalid case for MutationType\n");
            break;
    }
}
