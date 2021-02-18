//
//  GymUDS.cpp
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

#include <algorithm>
#include <cassert>
#include <string>
#include "GymUDS.hpp"

namespace GymUDS
{
EnvironmentClient::EnvironmentClient(const std::string& sock_filepath) :
    stub{Environment::NewStub(grpc::CreateChannel(sock_filepath, grpc::InsecureChannelCredentials()))}
{}

observation_t EnvironmentClient::reset()
{
    grpc::ClientContext context;
    Empty empty_request;
    State state_reply;

    grpc::Status status = stub->Reset(&context, empty_request, &state_reply);
    if (status.ok() == false) {
        printf("Error Reset: %s\n", status.error_message().c_str());
    }
    assert(status.ok());

    observation_t observation;
    std::copy_n(state_reply.observation().data().cbegin(), state_reply.observation().data().size(), std::back_inserter(observation));
    envName = state_reply.envid();
    return observation;
}

state_t EnvironmentClient::step(const action_t &action_value)
{
    grpc::ClientContext context;
    Action action_request;
    
    int size = static_cast<int>(action_value.size());
    for(int i = 0; i < size; i++ ) {
        action_request.add_data(action_value[i]);
    }
    
    State state_reply;

    grpc::Status status = stub->Step(&context, action_request, &state_reply);
    if (status.ok() == false) {
        printf("Error Step: %s\n", status.error_message().c_str());
    }
    assert(status.ok());

    observation_t observation;
    std::copy_n(state_reply.observation().data().cbegin(), state_reply.observation().data().size(), std::back_inserter(observation));
    return {observation, state_reply.reward(), state_reply.done()};
}


action_t EnvironmentClient::sample()
{
    grpc::ClientContext context;
    Empty empty_request;
    Action action_reply;

    grpc::Status status = stub->Sample(&context, empty_request, &action_reply);
    if (status.ok() == false) {
        printf("Error Sample: %s\n", status.error_message().c_str());
    }
    assert(status.ok());
    
    int size = action_reply.data_size();
    action_t resp(size);
    for (int i = 0; i < size; i++) {
        resp[i] = action_reply.data(i);
    }
    
    return resp;
}

std::string EnvironmentClient::getEnvName() {
    return envName;
}
}
