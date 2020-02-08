//
//  ReinforcementEnvironment.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 22/7/19.
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

#include "ReinforcementEnvironment.hpp"
#include "MountainCar.hpp"
#include "DoubleCartPole.hpp"
#include "FunctionApproximation.hpp"
#include "Multiplexer.hpp"
#include "SingleCartPole.hpp"
#include "SymmetricEncryption.hpp"
#include "SymmetricEncryptionCPA.hpp"

ReinforcementEnvironment::ReinforcementEnvironment(ushortT eID, const char *fileName):
    envID(eID), ini(fileName)
{
    if (ini.ParseError() != 0) {
        printf("File: %s could not be loaded, finishing execution\n", fileName);
        exit(1);
    }
    
    observation = NULL;
}

ReinforcementEnvironment::~ReinforcementEnvironment()
{
    if (observation != NULL) {
        free(observation);
    }
}

ReinforcementEnvironment *RLFunctions::createEnvFromStr(const ushortT &envID, const PCEnvironmentSupported &env, const string &envConf)
{
    const char *eCC = envConf.c_str();
    switch (env) {
        case PCEMountainCar: return new MountainCar(envID, eCC);
        case PCEDoubleCartPole: return new DoubleCartPole(envID, eCC); // TODO!! Check again, max SUNA 829, this was 125. Most likely Primers
        case PCEFunctionApproximation: return new FunctionApproximation(envID, eCC); // TODO!! Check again, BiSUNA -11274, this -3868. SUNA -4047, this -16625
        case PCEMultiplexer: return new Multiplexer(envID, eCC); // SUNA: -755 (gen 182), this stuck at -832 (gen 278)
        case PCESingleCartPole: return new SingleCartPole(envID, eCC); // TODO!! Check again, solved BiSUNA (10000), here was longer.
        case PCESymmetricEncryption: return new SymmetricEncryption(envID, eCC);
        case PCESymmetricEncryptionCPA: return new SymmetricEncryptionCPA(envID, eCC);
        default:
            printf("Environment %s not supported.\n", eCC);
            exit(1);
            break;
    }
}

vector<ReinforcementEnvironment *> RLFunctions::environmentVector(const ushortT numEnv, PConfig *pConf)
{
    const PCEnvironmentSupported envName = pConf->environmentName();
    const string envConf = pConf->environmentConf();
    int obs = 0;
    int act = 0;
    vector<ReinforcementEnvironment *> envs;
    
    for (ushort i = 0; i < numEnv; i++) {
        ReinforcementEnvironment *env = createEnvFromStr(i, envName, envConf);
        env->start(obs, act);
        envs.push_back(env);
    }
    
    return envs;
}