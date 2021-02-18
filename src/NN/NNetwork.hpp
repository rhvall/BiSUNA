//
//  NNetwork.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 14/5/19.
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

#ifndef NNetwork_hpp
#define NNetwork_hpp

#include "Configuration/PConfig.hpp"

struct NNFunction
{
    static float mainBiSUNA(const char *config);
    static float mainThreadedNNetwork(PConfig *conf);
};

#endif /* NNetwork_hpp */
