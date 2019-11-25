//
//  SymmetricEncryption.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 27/10/19.
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

#ifndef SymmetricEncryption_hpp
#define SymmetricEncryption_hpp

#include "ReinforcementEnvironment.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"

using ParameterVector = vector<ParameterType>;

struct SymmetricEncryption: public ReinforcementEnvironment
{
    SymmetricEncryption(ushortT eID, const char *fileName);
    ~SymmetricEncryption();
    
    ParameterVector payload;
    ParameterVector symEncKey;
    uintT maxAdversarialAdvantage; // Up to how many generations the adversary can evolve 
    
    // Maximum reward that a configuration is expected to have, this helps to know when
    // to stop executing the environment
    int maxExpectedReward;
    
    // Number of generations it should remain in Max Expected Reward to finalize the environment
    uintT numGensMaxER;
    
    void start(int &numObsVars, int &numActionVars);
    float step(ParameterType *action);
    float step(ParameterVector action);
    float restart();
    
    void updateWithKey(ParameterType *arr, int size, ParameterType *key, int keySize);
    ParameterVector randomArray(const ushortT arrSize);
    ParameterVector keyedPayload(const ParameterVector &data);
    int distanceInputOutput(ParameterVector input, ParameterVector output);
};

struct SymEncFunctions
{
    static float symEncNetwork(PConfig *pconf);
    static vector<SymmetricEncryption *> symEncVector(const ushortT numEnv, PConfig *pConf);
    static void spectrumEvolve(UnifiedNeuralModel *activeModel, UnifiedNeuralModel *passiveModel);
};

#endif /* SymmetricEncryption_hpp */
