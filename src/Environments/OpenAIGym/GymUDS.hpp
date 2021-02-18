//
//  GymUDS.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 14/09/20.
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

#ifndef GymUDS_hpp
#define GymUDS_hpp

#include <string>
#include <tuple>
#include <vector>

#include <grpcpp/grpcpp.h>

#include "GymUDS.pb.h"
#include "GymUDS.grpc.pb.h"

namespace GymUDS
{
using action_t = std::vector<float>;
using observation_t = std::vector<float>;
using state_t = std::tuple<observation_t, float, bool>;

class EnvironmentClient
{
    private:
        std::unique_ptr<Environment::Stub> stub;
        std::string envName;
    
    public:
        EnvironmentClient(const std::string&);

        observation_t reset();
        state_t step(const action_t&);

        action_t sample();
        std::string getEnvName();
};
}

#endif
