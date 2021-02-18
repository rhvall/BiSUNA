//
//  OCLBridge.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 2/8/19.
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

#ifndef OCLBridge_hpp
#define OCLBridge_hpp

#include <stdio.h>
#include <array>
#include "RLAgent/UnifiedNeuralModel.hpp"
#include "OCL/Kernels/CLNetworkStruct.h"
#include "OpenCLUtils.hpp"

struct OCLBridge
{
    static ushortT toFRNT(const NFiringRate &fr, const NNeuronType &nt);
    static pair<NFiringRate, NNeuronType> fromFRNT(const ushortT &frNT);
    static CLNeuron toCLNeuron(const NNeuron &n, const NNeuronState &nSt);
    static pair<NNeuron, NNeuronState> fromCLNeuron(const CLNeuron &clN);
    static CLConnection toCLConnection(const NConnection &c, const NConnState &cst);
    static pair<NConnection, NConnState> fromCLConnection(const ushortT &cID, const CLConnection &clC);
    static CLUnifiedNeuralModel toCLUNM(const UnifiedNeuralModel &unm);
    static UnifiedNeuralModel fromCLUNM(const CLUnifiedNeuralModel &clUNM);
    static void checkConstantsMatch(const UnifiedNeuralModel &unm);
};
#endif /* OCLBridge_hpp */
