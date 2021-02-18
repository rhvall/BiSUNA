//
//  CLSupportFunctions.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 23/8/19.
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

#include "CLSupportFunctions.h"

inline CLPType activationFunction(tycheIState *tSt, ushort nt, CLPType weightedInput)
{
    // Mask only the first 10 bits
    nt = nt & 2047;
    switch(nt)
    {
        case 128: { // ntRandom:
#ifdef CONTINUOUS_PARAM
            float val = tycheIFloat((*tSt));
#else
            ushort val = tycheIUShort((*tSt));
#endif
            return val;
        }
        case 32: { // ntActivation
#ifdef CONTINUOUS_PARAM
            return tanh(weightedInput);
#else
            return popcount(weightedInput);
#endif
        }
        case 512: { // ntRoll
#ifdef CONTINUOUS_PARAM
            float change = weightedInput >= 0 ?  1.0 : -1.0;
            return weightedInput + change;
#else
            ushort val = weightedInput << 1 | weightedInput >> 15;
            return val;
#endif
        }
        case 1024:
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
        case 6: // ntNumberNeuronType:
        default: return 0;
    }
}

inline bool checkExcitationThreshold(CLPType ne)
{
#ifdef CONTINUOUS_PARAM
    return ne >= EXCITATION_THRESHOLD;
#else
    return ne < EXCITATION_THRESHOLD;
#endif
}

inline ushort clFiringRateByIndex(ushort idx)
{
    switch (idx) {
        case 0: return 1; // frL1
        case 1: return 7; // frL7
        case 2: return 49; // frL49
        default: return MAX_FIRING_RATE; // frNumberFiringRate;
    }
    
    return MAX_FIRING_RATE;
}

inline CLPType betaOfFiringRate(ushort fr)
{
    // We need to move all bits 10 places to remove Neuron type
    // information and read only the firing rate value.
    fr = fr >> 11;
    
#ifdef CONTINUOUS_PARAM
    float frD = convert_float(clFiringRateByIndex(fr));
    float partial = 1 / frD;
    return partial;
#else
    switch(fr) {
        case 0: return OUT_INDEX;
        case 1: return 2047;
        case 2: return 63;
        default: return 0;
    }
#endif
}

inline CLPType stateActivation(ushort nFR, CLPType prevSt, CLPType neuronOutput)
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

inline bool remainingNeuronThreshold(CLPType output)
{
#ifdef CONTINUOUS_PARAM
    return output > REMAINING_NEURON_THRESHOLD || output < -REMAINING_NEURON_THRESHOLD;
#else
    return output >= REMAINING_NEURON_THRESHOLD;
#endif
}

inline CLPType neuronOpr(CLPType a, CLPType b, CLPType c)
{
#ifdef CONTINUOUS_PARAM
    return c + (a * b);
#else
    return c | (a & b);
#endif
    
}

inline ushort clNeuronTypeByIndex(ushort idx)
{
    switch (idx) {
        case 0: return 16; // ntID = 16,
        case 1: return 32; // ntActivation = 32,
        case 2: return 64; // ntThreshold = 64,
        case 3: return 128; // ntRandom = 128,
        case 4: return 256; // ntControl = 256,
        case 5: return 512; // ntRoll = 512,
        case 6: return 1024; // ntCPrimer = 1024,
        case 7: return 1; // ntInput = 1,
        case 8: return 2; // ntOutput = 2,
        default: return MAX_NEURON_TYPE; // ntNumberNeuronType = 5,
//    ///////////////////////////////////////////
//    // ntInput and ntOutput are not considered
//    // within the number of neuron type because
//    // all network modules will have them
//    ///////////////////////////////////////////
//    ntCPrimer = 512, // This is an special type of control that always activates, with
//    // the principal characteristic of not receiving any connections to itself, when it does,
//    // it is transformed into a simple ntControl neuron. Every structural mutation must
//    // check if any of that happened in order to update this flag. It does not count as
//    // a typical neuron type, for that reason is not before ntNumberNeuronType.
    }
    
    return MAX_NEURON_TYPE;
};
