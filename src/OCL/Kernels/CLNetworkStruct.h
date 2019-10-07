//
//  CLNetworkStruct.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 24/7/19.
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

#ifndef CLNetworkStruct_h
#define CLNetworkStruct_h

//#define CONTINUOUS_PARAM

#ifdef CONTINUOUS_PARAM
    typedef float CLPType;
    #define MAXIMUM_WEIGHT 2147483647.0
    #define EXCITATION_THRESHOLD 0.0    //minimum excitation necessary to activate the neuron
    #define REMAINING_NEURON_THRESHOLD 0.001
#else
    typedef ushort CLPType;
    #define EXCITATION_THRESHOLD 256
    #define REMAINING_NEURON_THRESHOLD 15
#endif

typedef struct __attribute__((aligned(4))) __attribute__((packed))
{
    // Part of the CLConnState
    bool clCnType; // NOTE: false = ctRecurrent, true = ctForward
    bool clPCnType; // NOTE: false = ctRecurrent, true = ctForward
    // Part of the CLConnState
    
    ushort clFromNID;
    ushort clToNID;
    ushort clNeuroMod;
    CLPType clWeight;
} CLConnection;

typedef struct __attribute__((aligned(4))) __attribute__((packed))
{
    // Part of CLNeuron
    ushort clNID;
    ushort clFRNT;
    // clFiringRate: index 1 (6 most significant bits 1111111 0000000000)
    // clNType: index 1 (10 least signigicant bits 000000 1111111111)
    // Part of CLNeuron
    
    // Part of CLNeuronState
    bool clFired;
    CLPType clSt;
    CLPType clPSt;
    CLPType clExc;
    // Part of CLNeuronState
} CLNeuron;

// Because in OCL it is messy to send pointers, instead the whole data dump is sent to the
// device, to then use offsets to access sections of that data. For that reason, this and
// CLNetworkModule have "ranges" to point to parts of data it corresponds. For example,
// an OCL device would have the pointer to the whole array of CLNeuronState, but this
// struct would allow to access only those corresponding to a particular clModID.
//    ushort nStStart; // Where NeuronState starts for this NetworkState
//    ushort nStEnd; // Where NeuronState ends for this NetworkState
//    ushort cStStart; // Where Connection state starts for this NetworkState
//    ushort cStEnd; // Where Connection state ends for this NetworkState
//    ushort inputSize;
//    ushort inputIdx; // The location assigned to this state that corresponds to Input values
//    ushort outputIdx; // The location assigned to this state that corresponds to Output values
//    // In order to assing the correct input/output value to a neuron, it should add its nID in
//    // case of inputs. With outputs, nID should reduce the "inputSize" in order to correctly
//    // assign the value. Example:
//    // OCL Input buffer: [1,2,3,4,5,6,7,8,9,10] // 10 elements shared for all modules
//    // OCL Output buffer: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15] // 15 elements shared for all modules
//    // InputSize: 2; // Each network state has 2 input neurons
//    // inputIdx: 6 // This means this CLNetworkState its first input index is located in the 6th position
//    // OutputIdx: 10 // This CLNetworkState can write positions [10,11,12].
//    // If neuron output "2" wants to write, then it will locate its correct position as follows:
//    // ushort offset = outputIdx + (neuron.nID - inputSize);
//
//    ushort clModID; // The index of the Network module this state is related to
// CLNetworkState: nStStart, nStEnd, cStStart, cStEnd, inputSize, inputIdx, outputIdx, outputSize
// ushort8 netSt:  0         1        2          3       4           5        6           7

#endif /* CLNetworkStruct_h */
