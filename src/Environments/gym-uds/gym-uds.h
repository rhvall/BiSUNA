//
//  gym-uds.h
//  BiSUNA
//
//  Created by R on 12/4/19.
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

#ifndef GYM_H
#define GYM_H

#include <string>
#include <tuple>
#include <vector>

#include <grpcpp/grpcpp.h>

#include "gym-uds.pb.h"
#include "gym-uds.grpc.pb.h"

namespace gym_uds
{
using action_t = std::vector<float>;
using observation_t = std::vector<float>;
using state_t = std::tuple<observation_t, float, bool>;


class EnvironmentClient
{
    private:
        std::unique_ptr<Environment::Stub> stub;
        std::string envID;
    
    public:
        EnvironmentClient(const std::string&);

        observation_t reset();
        state_t step(const action_t&);

        action_t sample();
        std::string getEnvID();
};
}

#endif
