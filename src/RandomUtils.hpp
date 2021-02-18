//
//  RandomUtils.hpp
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

#ifndef RandomUtils_hpp
#define RandomUtils_hpp

#include "NN/NNetworkStruct.hpp"
#include <random>

class RandomUtils
{
public:
    static ushortT randomPositive(ushortT maxVal);
    static ushort randomRangeUShort(ushort minVal, ushort maxVal, bool normalDist = false);
    static floatT randomRangeFloat(floatT minVal, floatT maxVal, bool normalDist = false);
    static float randomPositiveFloat(floatT maxVal);
    static NNeuronType randomNeuronType();
    static NFiringRate randomFiringRate();
    static float randomNormal(float mean, float stdDev);
    static uintT randomUInt(uintT maxVal);
    // If the caller needs to restart the random function
    // generator or needs to deallocate the object.
    static void deleteRand();
    
    // This function should be used for debugging purposes only
    // to make testing easier with constant seeds
    static mt19937 *changeRandomSeed(const unsigned int seed);
    
    // These two make sure this class is not coppied
    RandomUtils(RandomUtils const &) = delete;
    void operator = (RandomUtils const &) = delete;

private:
    // This makes sure this class is not constructed
    RandomUtils() = delete;
    
    static mt19937 *getEngine();
};

#endif /* RandomUtils_hpp */
