//
//  ReinforcementEnvironment.cpp
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

#include "ReinforcementEnvironment.hpp"
#include "MountainCar.hpp"
#include "DoubleCartPole.hpp"
#include "FunctionApproximation.hpp"
#include "Multiplexer.hpp"
#include "SingleCartPole.hpp"
#include "SymmetricEncryption.hpp"
#include "SymmetricEncryptionCPA.hpp"
#include "RandomWalk/RandomWalk.hpp"
#ifdef GYMENV
#include "OpenAIGym/GymEnv.hpp"
#endif

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
#ifdef GYMENV
        case PCEGymEnv: return new GymEnv(envID, eCC);
#endif
        case PCEMultiplexer: return new Multiplexer(envID, eCC); // SUNA: -755 (gen 182), this stuck at -832 (gen 278)
        case PCESingleCartPole: return new SingleCartPole(envID, eCC); // TODO!! Check again, solved BiSUNA (10000), here was longer.
        case PCESymmetricEncryption: return new SymmetricEncryption(envID, eCC);
        case PCESymmetricEncryptionCPA: return new SymmetricEncryptionCPA(envID, eCC);
        case PCERandomWalk: return new RandomWalk(envID, eCC);
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
