//
//  GymEnv.h
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

#include "GymEnv.hpp"
#include "Discretizer.h"
#include "Parameters.hpp"

enum OpenAIEnv {
    Roulette,
    DuplicatedInput,
    NChain,
    Copy,
    MountainCar,
    RSInvertedPendulum,
    RSHalfCheetah,
    RSHopper,
    RSWalker2d,
    RSHumanoid,
    RSAnt,
    SupportedEnvironments
};

const char *OpenAIEnvNames[] = {
    "Roulette-v0",
    "DuplicatedInput-v0",
    "NChain-v0",
    "Copy-v0",
    "MountainCar-v0",
// NOTE!! The following environments are part of Roboschool, which are not fully
// tested with BiSUNA at the time this was written, possibly some might not
// perform as expected.
    "RoboschoolInvertedPendulum-v1",
    "RoboschoolHalfCheetah-v1",
    "RoboschoolHopper-v1",
    "RoboschoolWalker2d-v1",
    "RoboschoolHumanoid-v1",
    "RoboschoolAnt-v1"
};

GymEnv::GymEnv(ushortT eID, const char *fileName):
    Reinforcement_Environment(eID, fileName)
{
    string envSocket = ini.Get("GymEnv", "Socket", OpenAIEnvNames[MountainCar]);
    string num = to_string(envID);
    envSocket.append(num);

    envG = new gym_uds::EnvironmentClient(envSocket);
	this->didFinish = false;
    trial = -1;	//the first trial will be zero, because restart() is called making it increment
    MAX_STEPS = (uintT)ini.GetInteger("GymEnv", "MaxSteps", 3000);
}

GymEnv::~GymEnv()
{
    delete envG;
}

void GymEnv::start(int &number_of_observation_vars, int &number_of_action_vars)
{
    gym_uds::observation_t obsEnv = envG->reset();
    gymID = envG->getEnvID();
    envIDIdx = findEnvIndex(OpenAIEnvNames, gymID.c_str());
    
    if (envIDIdx < 0) {
        printf("The environment (%s) is not supported yet\n", gymID.c_str());
        exit(1);
    }
    
    printf("Environment: %s\n", gymID.c_str());
    gym_uds:: action_t act = envG->sample();
	number_of_observation_vars = static_cast<int>(obsEnv.size());
    this->number_of_observation_vars = number_of_observation_vars;
    this->observation = (ParameterType *)malloc(number_of_observation_vars * sizeof(ParameterType));
    
    number_of_action_vars = static_cast<int>(act.size());
	this->number_of_action_vars = number_of_action_vars;
	restart();
}

float GymEnv::step(ParameterType *action)
{
	// initial reward
	if (action == NULL) {
		return 0;
	}
    
    float reward;
    // If there is a boundary in the environment, it is possible
    // to penalize agents that go outside of such values.
//    float rewardXtra = 0;
    
    gym_uds::action_t act = transformAction(action);
    
    gym_uds::observation_t obsEnv;
    std::tie(obsEnv, reward, didFinish) = envG->step(act);
    
    copyObservation(obsEnv);
    
    if (didFinish) {
        restart();
    }
    
    return reward;
}

float GymEnv::restart()
{
	trial++;
    gym_uds::observation_t obsEnv = envG->reset();
    
    copyObservation(obsEnv);
    
	return 0;
}

void GymEnv::print()
{
}

void GymEnv::copyObservation(gym_uds::observation_t obs)
{
#ifdef CONTINUOUS_PARAM
    memcpy(observation, obs.data(), obs.size() * sizeof(ParameterType));
#else
    if (envIDIdx == MountainCar) {
        copyObsMoutainCarV0(obs);
    }
    else {
        copyObsDiscreteTuple(obs);
    }
#endif
}

gym_uds::action_t GymEnv::transformAction(ParameterType *action)
{
#ifdef CONTINUOUS_PARAM
//    gym_uds::action_t act(action, action + sizeof(action) / sizeof(action[0]));
    gym_uds::action_t act(action, action + number_of_action_vars);
#else
    int actVar = this->number_of_action_vars;
    gym_uds::action_t act(actVar);
//    ParameterType cc = action[0];
// Case for "MountainCar-v0"
//    act[0] = transformFromPT(cc, -1, 1);
// Case for "nChain-v0"
//    act[0] = static_cast<float>(cc);
// Case for "DuplicatedInput-v0"
    act = transformActionDiscreteTuple(action);
#endif
    
    verifyBounds(act);
    
    return act;
}

void GymEnv::copyObsMoutainCarV0(gym_uds::observation_t obs)
{
    observation[0] = transformToPT(obs[0], -1.2, 0.6);
    observation[1] = transformToPT(obs[1] * 10, -0.1, 0.1);
}

void GymEnv::copyObsDiscreteTuple(gym_uds::observation_t obs)
{
    for (int i = 0; i < number_of_observation_vars; i++) {
        observation[i] = static_cast<ParameterType>(obs[i]);
    }
}

gym_uds::action_t GymEnv::transformActionDiscreteTuple(ParameterType *action)
{
    int actVar = this->number_of_action_vars;
    gym_uds::action_t act(actVar);
    for (int i = 0; i < actVar; i++) {
        act[i] = static_cast<float>(action[i]);
    }
    return act;
}

void GymEnv::verifyBounds(gym_uds::action_t &act)
{
    switch (envIDIdx) {
        case Roulette: {
            act[0] = fmax(0, fmin(37, act[0]));
            break;
        }
        case NChain: {
            act[0] = fmax(0, fmin(1, act[0]));
            break;
        }
        case DuplicatedInput:
        case Copy: {
            act[0] = fmax(0, fmin(1, act[0]));
            act[1] = fmax(0, fmin(1, act[1]));
            act[2] = fmax(0, fmin(4, act[2]));
            break;
        }
        case MountainCar: {
            act[0] = fmax(0, fmin(2, act[0]));
            act[0] = act[0] >= 1 ? 2 : act[0];
            act[0] = act[0] < 1 ? 0 : act[0];
            break;
        }
        case RSHopper:
        case RSHalfCheetah:
        case RSInvertedPendulum:
        case RSWalker2d:
        case RSHumanoid:
        case RSAnt: {
            // Add here special conditions when these environments are tested
            break;
        }
        default: {
            printf("This environment does not has bounds, finishing execution\n");
            exit(1);
            break;
        }
            
    }
}

int GymEnv::findEnvIndex(const char **env, const char *name)
{
    int result = -1;
    size_t size = strlen(name);
    for (int i = 0; i < SupportedEnvironments; i++)
    {
        bool equal = true;
        for (size_t j = 0; j < size; j++) {
            if (env[i][j] != name[j]) {
                equal = false;
                break;
            }
        }
        
        if (equal) {
            return i;
        }
    }
    
    return result;
}
