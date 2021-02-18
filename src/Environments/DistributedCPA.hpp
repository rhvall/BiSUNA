//
//  DistributedCPA.hpp
//  BiSUNAOpenCL
//
//  Created by RH VT on 2/16/21.
//  Copyright © 2021 R. All rights reserved.
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

#ifndef DistributedCPA_hpp
#define DistributedCPA_hpp

#include "SymmetricEncryptionCPA.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"

struct DistributedCPA: public SymmetricEncryptionCPA
{
    DistributedCPA(ushortT eID, const char *fileName);
    ~DistributedCPA();

    float stepAdversary(ParameterType action);
    void updateWithKey(ParameterType *arr, int size, ParameterType *key, int keySize);
    ParameterVector adversaryPayload(const ParameterVector &ciphertext);
};

struct DistributedCPAFunctions
{
    static float distCPAAgent(PConfig *const pconf);
    static float distCPANetwork(PConfig *const pconf);
};

#endif /* DistributedCPA_hpp */
