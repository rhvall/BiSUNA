//
//  GymEnv.hpp
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

#ifndef GymEnv_hpp
#define GymEnv_hpp

#include <stdlib.h>
#include <stdio.h>
#include "Parameters.hpp"
#include "Environments/ReinforcementEnvironment.hpp"
#include "Environments/OpenAIGym/GymUDS.hpp"
   
class GymEnv : public ReinforcementEnvironment
{
    public:
        GymEnv(ushortT eID, const char *fileName);
		~GymEnv();
		
        bool didFinish = false;
  
//Reinforcement Problem API
        void start(int &numObsVars, int &numActionVars);
        float step(ParameterType *action);
		float restart();
        void print();
	
    private:
        GymUDS::EnvironmentClient *envG = NULL;
        string envName;
        string socket;
        uint gymType;
    
        void copyObservation(GymUDS::observation_t obs);
        void copyObsMoutainCarV0(GymUDS::observation_t obs);
        void copyObsDiscreteTuple(GymUDS::observation_t obs);
        void verifyBounds(GymUDS::action_t &act);
        int findEnvIndex(const char **env, const char *name);
        GymUDS::action_t transformAction(ParameterType *action);
        GymUDS::action_t transformActionDiscreteTuple(ParameterType *action);
};

#endif // GymEnv_hpp
