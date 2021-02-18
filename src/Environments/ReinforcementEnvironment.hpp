//
//  ReinforcementEnvironment.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 22/7/19.
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

#ifndef ReinforcementEnvironment_hpp
#define ReinforcementEnvironment_hpp

#include "Configuration/PConfig.hpp"

//features (in fact, they are restrictions to the reinforcement problem)
//	NormalizedObservation - Observation real values must be in the [-1,1] range
//	NormalizedAction - Action real values are supposed to be in the [0,1] range
enum NomalizedValues {
    NormalizedObservation,
    NormalizedAction
};

struct ReinforcementEnvironment
{
    ReinforcementEnvironment(ushortT eID, const char *fileName);
    virtual ~ReinforcementEnvironment();
    
    ParameterType *observation;
    int observationVars;
    int actionVars;
    int trial;
    int maxSteps;
    
    ushortT envID;
    INIReader ini;
    
    virtual void start(int &numObsVars, int &numActionVars) = 0;
    virtual float step(ParameterType *action) = 0;
    virtual float restart() = 0;
    virtual void print() { };
    virtual bool set(int feature) { return false; }; //see enum above for the acceptable features
};

struct RLFunctions
{
    static ReinforcementEnvironment *createEnvFromStr(const ushortT &envID, const PCEnvironmentSupported &env, const string &envConf);
    static vector<ReinforcementEnvironment *> environmentVector(const ushortT numEnv, PConfig *pConf);
};

#endif
