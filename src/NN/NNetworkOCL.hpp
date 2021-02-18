//
//  NNetworkOCL.hpp
//  BiSUNAOpenCL
//
//  Created by RH VT on 11/03/20.
//  Copyright © 2020 R. All rights reserved.
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

#ifndef NNetworkOCL_hpp
#define NNetworkOCL_hpp

#include "Configuration/PConfig.hpp"
#include "Environments/ReinforcementEnvironment.hpp"
#include "NN/NNetworkExtra.hpp"
#include "OCL/OCLContainer.hpp"

struct NNFunctionOCL
{
    static float executeOCL(vector<ReinforcementEnvironment *>env, const ushort &episodesPerAgent, OCLContainer *cont, bool profiling);
    static float mainOCLNetwork(PConfig *conf);
};

#endif /* NNetworkOCL_hpp */
