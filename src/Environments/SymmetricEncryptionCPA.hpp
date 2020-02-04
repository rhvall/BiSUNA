//
//  SymmetricEncryptionCPA.hpp
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

#ifndef SymmetricEncryptionCPA_hpp
#define SymmetricEncryptionCPA_hpp

#include "ReinforcementEnvironment.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"

struct SymmetricEncryptionCPA: public ReinforcementEnvironment
{
    SymmetricEncryptionCPA(ushortT eID, const char *fileName);
    ~SymmetricEncryptionCPA();
    
    ParameterVector payload;
    // "true" signals that the correct "payload" is the first part of the adversary input
    // "false" means it is on the second part. The third part is always used for the ciphertext
    bool payloadLocation;
    ParameterVector symEncKey;
    uintT maxAdversarialAdvantage; // Up to how many generations the adversary can evolve 
    
    // Number of generations it should remain in Max Expected Reward to finalize the environment
    uintT numGensMaxER;
    
    // Reward for resolving effectively the adversary stage before executing CPA
    const int ADVERSARY_TRAIN_REWARD = 50;
    // Extra reward for each correct bit in the Eve response to CPA
    const int ADVERSARY_TRAIN_SMALL_REWARD = 10;
    // Number of correct bit Eve should have when training in CPA
    const int ADVERSARY_TRAIN_BITS = 8;
    // Punishment when adversary does not correctly assign a value before executing CPA
    const int ADVERSARY_TRAIN_NEGATIVE_REWARD = -10;
    
    // This will signal to the environment that the adversary should execute first to
    // learn to distinguish between payloads. This flag only applies to CPA environment
    bool trainAdversary;
    bool preTrainAB;
    
    void start(int &numObsVars, int &numActionVars);
    float step(ParameterType *action);
    float stepAdversary(ParameterType action);
    float step(ParameterVector action);
    float restart();
    
    void updateWithKey(ParameterType *arr, int size, ParameterType *key, int keySize);
    ParameterVector randomArray(const ushortT arrSize);
    ParameterVector keyedPayload(const ParameterVector &data);
    ParameterVector adversaryPayload(const ParameterVector &ciphertext);
};

struct SymEncCPAFunctions
{
    static float symEncCPANetwork(PConfig *const pconf);
    static vector<SymmetricEncryptionCPA *> symEncVector(const ushortT numEnv, PConfig *const pConf);
    static float trainCPAAdversary(PConfig *const pConf, UnifiedNeuralModel *adversary, vector<SymmetricEncryptionCPA *> &envs, UNMCell *aliceCell = NULL);
    static void replicateBestAdversary(UnifiedNeuralModel *advs, vector<SymmetricEncryptionCPA *> *envs);
};

#endif /* SymmetricEncryptionCPA_hpp */
