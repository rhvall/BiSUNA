//
//  RandomUtils.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 31/5/19.
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

#include "RandomUtils.hpp"
#include <ctime>
#include <random>

using namespace std;

static mt19937 *randEng = nullptr;

inline mt19937 *RandomUtils::getEngine()
{
    if (randEng == nullptr) {
        const uintT seed = static_cast<uintT>(time(0));
        randEng = new mt19937(seed);
    }
    
    return randEng;
}

void RandomUtils::deleteRand()
{
    if (randEng != nullptr) {
        delete randEng;
    }
}

mt19937 *RandomUtils::changeRandomSeed(const unsigned int seed)
{
    deleteRand();
    randEng = new mt19937(seed);
    return randEng;
}

NFiringRate RandomUtils::randomFiringRate()
{
    int level = randomPositive(frNumberFiringRate - 1);
    switch(level) {
        case 0: return frL1;
        case 1: return frL7;
        default : return frL49;
    }
    
    return frNumberFiringRate;
}

NNeuronType RandomUtils::randomNeuronType()
{
//    int level = randomPositive(ntNumberNeuronType - 2);
    // TODO!! Test here if removing ntControl & ntCPrimer makes
    // a difference
    int level = randomPositive(ntNumberNeuronType - 1);
    return ListedNNeuronType[level];
}

ushortT RandomUtils::randomPositive(ushortT maxVal)
{
    return randomRangeUShort(0, maxVal);
}

template <typename T>
T randomRange(mt19937 *re, T minVal, T maxVal, bool normalDist)
{
    if constexpr (std::is_integral<T>::value) {
        uniform_int_distribution<T> unii(minVal, maxVal);
        return unii(*re);
    }
    else if constexpr (std::is_floating_point<T>::value) {
        if (normalDist == true) {
            normal_distribution<T> ndist(minVal, maxVal);
            return ndist(*re);
        }
        else {
            uniform_real_distribution<T> unif(minVal, maxVal);
            return unif(*re);
        }
    }
    else {
        static_assert(std::is_integral<T>::value, "This function requires integral or floating point");
    }
}

ushortT RandomUtils::randomRangeUShort(ushortT minVal, ushortT maxVal, bool normalDist)
{
    return randomRange<ushortT>(getEngine(), minVal, maxVal, normalDist);
}

floatT RandomUtils::randomRangeFloat(floatT minVal, floatT maxVal, bool normalDist)
{
    return randomRange<floatT>(getEngine(), minVal, maxVal, normalDist);
}

float RandomUtils::randomPositiveFloat(floatT maxVal)
{
    return randomRangeFloat(0.0, maxVal);
}

float RandomUtils::randomNormal(float mean, float stdDev)
{
    return randomRangeFloat(mean, stdDev, true);
}

uintT RandomUtils::randomUInt(uintT maxVal)
{
    return randomRange<uintT>(getEngine(), 0, maxVal, false);
}
