//
//  GymEnv.cpp
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

#include "GymEnv.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"
#include "Environments/Discretizer.h"
#include "RandomUtils.hpp"

enum OpenAIEnv {
    Roulette,
    DuplicatedInput,
    NChain,
    Copy,
    MountainCar,
    EnduroRam,
    SpaceInvadersRam,
    QbertRam,
    SeaquestRam,
    PongRam,
    BeamRiderRam,
    BreakoutRam,
    SupportedEnvironments
};

const char *OpenAIEnvNames[] = {
    "Roulette-v0",
    "DuplicatedInput-v0",
    "NChain-v0",
    "Copy-v0",
    "MountainCar-v0",
    "Enduro-ram-v0",
    "SpaceInvaders-ram-v0",
    "Qbert-ram-v0",
    "Seaquest-ram-v0",
    "Pong-ram-v0",
    "BeamRider-ram-v0",
    "Breakout-ram-v0"
};

GymEnv::GymEnv(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    trial = -1;    //the first trial will be zero, because restart() is called making it increment
    maxSteps = 10000;
    const string defaultSocket = "unix:///tmp/gym-uds-socket";
    socket = ini.Get("GymEnv", "Socket", defaultSocket);
    socket += to_string(eID);
    envG = new GymUDS::EnvironmentClient(socket);
}

GymEnv::~GymEnv()
{
    delete envG;
}

void GymEnv::start(int &numObsVars, int &numActionVars)
{
    GymUDS::observation_t obsEnv = envG->reset();
    envName = envG->getEnvName();
    gymType = findEnvIndex(OpenAIEnvNames, envName.c_str());
    
    if (gymType < 0) {
        printf("The environment (%s) is not supported yet\nFinishing execution\n", envName.c_str());
        exit(1);
    }
    
    printf("Environment %i: %s @ %s\n", envID, envName.c_str(), socket.c_str());
    GymUDS:: action_t act = envG->sample();
	numObsVars = static_cast<int>(obsEnv.size());
    observationVars = numObsVars;
    observation = (ParameterType *)malloc(observationVars * sizeof(ParameterType));
    
    numActionVars = static_cast<int>(act.size());;
    actionVars = numActionVars;
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
    
    GymUDS::action_t act = transformAction(action);
    
    GymUDS::observation_t obsEnv;
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
    GymUDS::observation_t obsEnv = envG->reset();
    
    copyObservation(obsEnv);
    
	return 0;
}

void GymEnv::print()
{
}

void GymEnv::copyObservation(GymUDS::observation_t obs)
{
#ifdef CONTINUOUS_PARAM
    memcpy(observation, obs.data(), obs.size() * sizeof(ParameterType));
#else
    if (gymType == MountainCar) {
        copyObsMoutainCarV0(obs);
    }
    else {
        copyObsDiscreteTuple(obs);
    }
#endif
}

GymUDS::action_t GymEnv::transformAction(ParameterType *action)
{
#ifdef CONTINUOUS_PARAM
//    GymUDS::action_t act(action, action + sizeof(action) / sizeof(action[0]));
    GymUDS::action_t act(action, action + actionVars);
#else
    int actVar = this->actionVars;
    GymUDS::action_t act(actVar);
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

void GymEnv::copyObsMoutainCarV0(GymUDS::observation_t obs)
{
    observation[0] = transformToPT(obs[0], -1.2, 0.6);
    observation[1] = transformToPT(obs[1] * 10, -0.1, 0.1);
}

void GymEnv::copyObsDiscreteTuple(GymUDS::observation_t obs)
{
    for (int i = 0; i < observationVars; i++) {
        observation[i] = static_cast<ParameterType>(obs[i]);
    }
}

GymUDS::action_t GymEnv::transformActionDiscreteTuple(ParameterType *action)
{
    int actVar = actionVars;
    GymUDS::action_t act(actVar);
    for (int i = 0; i < actVar; i++) {
        act[i] = static_cast<float>(action[i]);
    }
    return act;
}

void GymEnv::verifyBounds(GymUDS::action_t &act)
{
    switch (gymType) {
        case Roulette: {
            act[0] = fmax(0, fmin(37, act[0])); // Action space Discrete(38)
            break;
        }
        case NChain: {
            act[0] = fmax(0, fmin(1, act[0])); // Action space Discrete(2)
            break;
        }
        case DuplicatedInput:
        case Copy: { // Action space Tuple(Discrete(2), Discrete(2), Discrete(5))
            act[0] = fmax(0, fmin(1, act[0]));
            act[1] = fmax(0, fmin(1, act[1]));
            act[2] = fmax(0, fmin(4, act[2]));
            break;
        }
        case MountainCar: { // Action space Discrete(3)
            act[0] = fmax(0, fmin(2, act[0]));
            act[0] = act[0] >= 1 ? 2 : act[0];
            act[0] = act[0] < 1 ? 0 : act[0];
            break;
        }
        case EnduroRam:
        case BeamRiderRam: {
            act[0] = fmax(0, fmin(8, act[0])); // Action space Discrete(9)
            break;
        }
        
        case QbertRam:
        case SpaceInvadersRam:
        case PongRam: {
            act[0] = fmax(0, fmin(5, act[0])); // Action space Discrete(6)
            break;
        }
        case SeaquestRam:{
            act[0] = fmax(0, fmin(17, act[0])); // Action space Discrete(18)
            break;
        }
        case BreakoutRam: {
            act[0] = fmax(0, fmin(3, act[0])); // Action space Discrete(4)
            break;
        }
        default: {
            printf("Bounds for this environment have not been set, finishing execution");
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
        for (int j = 0; j < size; j++) {
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
