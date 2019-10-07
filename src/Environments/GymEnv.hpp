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

#ifndef GYMENV_H
#define GYMENV_H

#include "Reinforcement_Environment.h"
#include "Environments/gym-uds/gym-uds.h"
#include "Environments/gym-uds/gym-uds.pb.h"
   
class GymEnv : public Reinforcement_Environment
{
public:
		GymEnv(ushortT eID, const char *fileName);
		~GymEnv();
		
		//Reinforcement Problem API
		void start(int &number_of_observation_vars, int &number_of_action_vars);
		float step(ParameterType *action);
		float restart();
		void print();
        bool didFinish;
private:
        gym_uds::EnvironmentClient *envG;
        std::string gymID;
        int envIDIdx;
        void copyObservation(gym_uds::observation_t obs);
        void copyObsMoutainCarV0(gym_uds::observation_t obs);
        gym_uds::action_t transformAction(ParameterType *action);
        void copyObsDiscreteTuple(gym_uds::observation_t obs);
        gym_uds::action_t transformActionDiscreteTuple(ParameterType *action);
        void verifyBounds(gym_uds::action_t &act);
        int findEnvIndex(const char **env, const char *name);
};

#endif
