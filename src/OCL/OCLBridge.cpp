//
//  OCLBridge.cpp
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

#include "OCLBridge.hpp"

// A NNeuron is transformed into a two element vector, with the
// following characteristics:
// idx 0 = Neuron ID;
// idx 1 = 000000 - 0000000000
// Idx 1 is composed of neuronType (bits 0 - 10) and firing rate
// (bits 11 - 16). If the firing rate is needed, it can simply be
// shifted 10 spaces right and the result would give the FR.
CLNeuron OCLBridge::toCLNeuron(const NNeuron &n, const NNeuronState &nSt)
{
    ushortT fr = ushortT(n.firingRate);
    ushortT nType = ushortT(n.nType);
    ushortT res = nType | (fr << 10);
    
    CLNeuron clN;
    clN.clNID = n.nID;
    clN.clFRNT = res;
    clN.clSt = nSt.state;
    clN.clPSt = nSt.prevState;
    clN.clExc = nSt.excitation;
    clN.clFired = nSt.isFired;

    return clN;
}

pair<NNeuron, NNeuronState> OCLBridge::fromCLNeuron(const CLNeuron &clN)
{
    NNeuron n = NNeuron();
    n.nID = clN.clNID;
    ushortT fr = clN.clFRNT >> 10;
    ushortT nType = clN.clFRNT & 1023;
    n.nType = NNeuronType(nType);
    n.firingRate = NFiringRate(fr);
    
    NNeuronState nSt = NNeuronState();
    nSt.state = clN.clSt;
    nSt.prevState = clN.clPSt;
    nSt.excitation = clN.clExc;
    nSt.isFired = clN.clFired;
    
    return make_pair(n, nSt);
}

CLConnection OCLBridge::toCLConnection(const NConnection &c, const NConnState &cst)
{
    CLConnection clC = CLConnection();
    clC.clFromNID = c.fromNID;
    clC.clToNID = c.toNID;
    clC.clNeuroMod = c.neuroMod;
    clC.clWeight = c.weight;
    clC.clCnType = cst.connType != ctRecurrent;
    clC.clPCnType = cst.prevConnType != ctRecurrent;
    
    return clC;
}

pair<NConnection, NConnState> OCLBridge::fromCLConnection(const ushortT &cID, const CLConnection &clC)
{
    NConnection c = NConnection();
    c.fromNID = clC.clFromNID;
    c.toNID = clC.clToNID;
    c.neuroMod = clC.clNeuroMod;
    c.weight = clC.clWeight;
    
    NConnState cst = NConnState();
    cst.connID = cID;
    cst.connType = clC.clCnType ? ctFeedForward : ctRecurrent;
    cst.prevConnType = clC.clPCnType ? ctFeedForward : ctRecurrent;
    
    return {c, cst};
}

CLUNM OCLBridge::toCLUNM(const UnifiedNeuralModel &unm)
{
    CLUNM clUNM = CLUNM();
    clUNM.conf = unm.config;
    clUNM.nmap = unm.nmap;
    
    ushort inputOffset = 0;
    ushort outputOffset = 0;
    for (UNMCell *cell : unm.cells) {
        
        clUNM.clNetSt.push_back(clUNM.clNeurons.size());// st.nStStart = clUNM.clNeuronSt.size();
        
        for (ushort i = 0; i < cell->netMod->nNeurons.size(); i++) {
            CLNeuron clN = toCLNeuron(cell->netMod->nNeurons[i], cell->netSt->nNSt[i]);
            clUNM.clNeurons.push_back(clN);
        }
        
        clUNM.clNetSt.push_back(clUNM.clNeurons.size()); // st.nStEnd = clUNM.clNeuronSt.size();
        clUNM.clNetSt.push_back(clUNM.clConns.size()); // st.nStStart = clUNM.clConnsSt.size();
        
        for (ushort i = 0; i < cell->netMod->nConns.size(); i++) {
            CLConnection conn = toCLConnection(cell->netMod->nConns[i], cell->netSt->nCSt[i]);
            clUNM.clConns.push_back(conn);
        }
        
        clUNM.clNetSt.push_back(clUNM.clConns.size()); // st.cStEnd = clUNM.clConnSt.size();
        clUNM.clNetSt.push_back(unm.config.unmObs);// st.inputSize = unm.config.unmObs; // Observations are the input size.
        clUNM.clNetSt.push_back(inputOffset);// st.inputIdx = inputOffset;
        inputOffset += unm.config.unmObs;
        clUNM.clNetSt.push_back(outputOffset);// st.outputIdx = outputOffset;
        outputOffset += unm.config.unmActions; // Actions are the output size.
        clUNM.clNetSt.push_back(unm.config.unmActions); // Action size
    }
    
    return clUNM;
}

UnifiedNeuralModel OCLBridge::fromCLUNM(const CLUNM &clUNM)
{
    UnifiedNeuralModel unm = UnifiedNeuralModel(0, clUNM.conf);
    unm.nmap = clUNM.nmap;
    ushortT popSize = clUNM.conf.unmPopulation;
    
    for (ushortT i = 0; i < popSize; i++) {
        ushort stPos = i * CLUNM::clNetStSize;
        ushort nStStart = clUNM.clNetSt[stPos];
        ushort nStEnd = clUNM.clNetSt[stPos + 1];
        ushort cStStart = clUNM.clNetSt[stPos + 2];
        ushort cStEnd = clUNM.clNetSt[stPos + 3];
//        ushort inputSize = clUNM.clNetSt[stPos + 4];
//        ushort inputIdx = clUNM.clNetSt[stPos + 5];
//        ushort outputIdx = clUNM.clNetSt[stPos + 6];
        ushort clModID = i;
        
        unm.cells[i]->netMod->nParams.networkID = clModID;
        unm.cells[i]->netMod->nNeurons.clear();
        unm.cells[i]->netMod->nConns.clear();
        unm.cells[i]->netSt->nNSt.clear();
        unm.cells[i]->netSt->nCSt.clear();
        
        for (ushortT j = nStStart; j < nStEnd; j++) {
            auto result = fromCLNeuron(clUNM.clNeurons[j]);
            unm.cells[i]->netMod->nNeurons.push_back(result.first);
            unm.cells[i]->netSt->nNSt.push_back(result.second);
        }
        
        ushortT cIDCounter = 0;
        for (ushortT j = cStStart; j < cStEnd; j++) {
            auto res = fromCLConnection(cIDCounter, clUNM.clConns[j]);
            unm.cells[i]->netMod->nConns.push_back(res.first);
            unm.cells[i]->netSt->nCSt.push_back(res.second);
            cIDCounter++;
        }
        
        unm.cells[i]->netSt->module = unm.cells[i]->netMod;
    }
    
    return unm;
}

CLUNMMem::CLUNMMem(cl_context ctx, CLUNM &clUNM)
{
    cl_int err = 0;
    size_t length = sizeof(CLNeuron) * clUNM.clNeurons.size();
    void *ns;
    posix_memalign(&ns, DMA_ALIGNMENT, length);
    memcpy(ns, clUNM.clNeurons.data(), length);
    memNeurons = clCreateBuffer(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, length, ns, &err);
    oclCheckError(err, "Couldn't create a buffer object for CLNeuronSt");
    
    length = sizeof(CLConnection) * clUNM.clConns.size();
    void *cs;
    posix_memalign(&cs, DMA_ALIGNMENT, length);
    memcpy(cs, clUNM.clConns.data(), length);
    
    memConns = clCreateBuffer(ctx, CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, length, cs, &err);
    oclCheckError(err, "Couldn't create a buffer object for CLConns");
    
    length = sizeof(ushortT) * clUNM.clNetSt.size();
    void *nst;
    posix_memalign(&nst, DMA_ALIGNMENT, length);
    memcpy(nst, clUNM.clNetSt.data(), length);
    
    memSt = clCreateBuffer(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, length, nst, &err);
    oclCheckError(err, "Couldn't create a buffer object for CLNetworkModule");
    
    free(ns);
    free(cs);
    free(nst);
}

CLUNMMem::~CLUNMMem()
{
    clReleaseMemObject(memNeurons);
    clReleaseMemObject(memConns);
    clReleaseMemObject(memSt);
}
