//
//  CLSupportFunctions.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 23/8/19.
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

#include "CLSupportFunctions.h"

CLPType activationFunction(ushort nt, CLPType weightedInput)
{
    // Mask only the first 10 bits
    nt = nt & 1023;
    switch(nt)
    {
        case 128: { // ntRandom:
            //#ifdef CONTINUOUS_PARAM
            //            return RandomUtils::randomFloat(-1.0, 1.0);;
            //#else
            //            return RandomUtils::randomPositive(MAXIMUM_WEIGHT);
            //#endif
            return 0; // Check how to obtain random values in OCL
        }
        case 32: { // ntActivation
#ifdef CONTINUOUS_PARAM
            return tanh(weightedInput);
#else
            return popcount(weightedInput);
#endif
        }
        case 512: // ntCPrimer
        case 64: // ntThreshold
        case 256: { // ntControl
#ifdef CONTINUOUS_PARAM
            return weightedInput >= 0 ? 1.0 : -1.0;
#else
            int val = popcount(weightedInput);
            return val >= EXCITATION_THRESHOLD_BITS ? HALF_WEIGHT : 0;
#endif
        }
        case 16: // ntID:
        case 1: // ntInput:
        case 2: { // ntOutput: {
            return weightedInput;
        }
        case 5: // ntNumberNeuronType:
        default: return 0;
    }
}

bool checkExcitationThreshold(CLPType ne)
{
#ifdef CONTINUOUS_PARAM
    return ne >= EXCITATION_THRESHOLD;
#else
    return ne < EXCITATION_THRESHOLD;
#endif
}

CLPType betaOfFiringRate(ushort fr)
{
    // We need to move all bits 10 places to remove Neuron type
    // information and read only the firing rate value.
    fr = fr >> 10;
    
#ifdef CONTINUOUS_PARAM
    float frD = convert_float(fr);
    float partial = 1 / frD;
    return partial;
#else
    switch(fr) {
        case 1: return OUT_INDEX;
        case 7: return 2047;
        case 49: return 63;
        default: return 0;
    }
#endif
}

CLPType stateActivation(ushort nFR, CLPType prevSt, CLPType neuronOutput)
{
    CLPType beta = betaOfFiringRate(nFR);
    
#ifdef CONTINUOUS_PARAM
    //use Windrow Hoff for slower neurons
    CLPType state = prevSt + beta * (neuronOutput - prevSt);
#else
    CLPType state = (prevSt ^ (beta & (~(neuronOutput ^ prevSt))));
#endif
    
    return state;
}

bool remainingNeuronThreshold(CLPType output)
{
#ifdef CONTINUOUS_PARAM
    return output > REMAINING_NEURON_THRESHOLD || output < -REMAINING_NEURON_THRESHOLD;
#else
    return output >= REMAINING_NEURON_THRESHOLD;
#endif
}

CLPType neuronOpr(CLPType a, CLPType b, CLPType c)
{
#ifdef CONTINUOUS_PARAM
    return c + (a * b);
#else
    return c | (a & b);
#endif
    
}
