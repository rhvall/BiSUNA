//
//  CLRandom.cl
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

#include "CLRandom.h"

// TODO!! This function must be optimized for bitwise functions
ushort randomUShortRange(tycheIState* state, ushort minRange, ushort maxRange)
{
    ushort val2 = tycheIUShort((*state));
    return minRange + val2 % ((maxRange + 1) - minRange);
}

// Random Firing rate and Nuron type
ushort randomCLFRNT(tycheIState* state)
{
//    int level = randomPositive(ntNumberNeuronType - 2);
    // TODO!! Test here if removing ntControl & ntCPrimer makes
    // a difference
    ushort fr = randomUShortRange(state, 0, MAX_FIRING_RATE - 1);
    ushort nt = 4; // ntControl
    if (randomUShortRange(state, 0, 100) > CHANCE_OF_CONTROL_NEURON) {
        nt = randomUShortRange(state, 0, MAX_NEURON_TYPE - 1);
    }

    ushort mixed = fr << 11 | clNeuronTypeByIndex(nt);
    return mixed;
}

#ifdef CONTINUOUS_PARAM
float randomFloatRange(tycheIState* state, float minRange, float maxRange)
{
    float val = maxRange + 1;
    while (val > maxRange || val < minRange) {
        val = tycheIFloat((*state));
    }

    return val;
}
#endif

CLNeuron randomNeuron(tycheIState* state)
{
    CLNeuron neuron;
    neuron.clFRNT = randomCLFRNT(state);
    neuron.clFired = false;
    neuron.clSt = 0;
    neuron.clPSt = 0;
    neuron.clExc = 0;
    return neuron;
}

CLConnection randomConnection(tycheIState* state, uint neuronSize)
{
    CLConnection conn = {false, false, 0, 0, 0, 0};
    conn.clFromNID = randomUShortRange(state, 0, neuronSize - 1);
    conn.clToNID = randomUShortRange(state, 0, neuronSize - 1);
    bool isNeuroMod = randomUShortRange(state, 0, 100) < CHANCE_OF_NEUROMODULATION;

    if (isNeuroMod) {
        conn.clNeuroMod = randomUShortRange(state, 0, neuronSize);
        conn.clWeight = 1;
    }
    else {
        conn.clNeuroMod = USHRT_MAX;
        conn.clWeight = randomUShortRange(state, 0, 100) > 50 ? -1 : 1;
    }

    return conn;
}

// 0 = mtAddNeuron
// 1 = mtRemoveNeuron
// 2 = mtAddConnection
// 3 = mtRemoveConnection
ushort randomMutationType(tycheIState *state)
{
    ushort roulette = randomUShortRange(state, 0, 100);
    ushort accum = CHANCE_OF_ADD_NEURON;
    if (roulette > accum) {
        accum += CHANCE_OF_DEL_NEURON;
        if (roulette > accum) {
            accum += CHANCE_OF_ADD_CONN;
            if (roulette > accum) {
                return 3;
            }
            else {
                return 2;
            }
        }
        else {
            return 1;
        }
    }

    return 0;
}
