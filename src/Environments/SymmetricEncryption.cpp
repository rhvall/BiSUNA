//
//  SymmetricEncryption.cpp
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

#include "SymmetricEncryption.hpp"
#include "Configuration/PConfig.hpp"
#include "RandomUtils.hpp"
#include "NN/NNetwork.hpp"
#include <thread>
#include "RandomUtils.hpp"
#include "NN/NNetworkExtra.hpp"

SymmetricEncryption::SymmetricEncryption(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    trial = -1;
    maxSteps = (uintT)ini.GetInteger("SymmetricEncryption", "MaxSteps", 500);
    int keySize = (uintT)ini.GetInteger("SymmetricEncryption", "KeySize", 9);
    int payloadSize = (uintT)ini.GetInteger("SymmetricEncryption", "PayloadSize", 9);
    adversarialAdvantage = (uintT)ini.GetInteger("SymmetricEncryption", "AdversarialAdvantage", 9);
    // observation var is multiplied by two to allocate space for the
    // key, which is feed to every step and replaced every restart
    observationVars = payloadSize + keySize;
    actionVars = payloadSize;
    // payload replaces the "observation" pointer with a vector
    payload = ParameterVector(payloadSize);
    symEncKey = ParameterVector(keySize);
}

SymmetricEncryption::~SymmetricEncryption()
{
}

void SymmetricEncryption::start(int &numObsVars, int &numActionVars)
{
    numObsVars = observationVars;
    numActionVars = actionVars;
    
    restart();
}

float SymmetricEncryption::step(ParameterType *action)
{
    printf("This function is not used in this environment, use the vectorized version instead");
    return 0;
}

float SymmetricEncryption::step(ParameterVector action)
{
    int result = distanceInputOutput(payload, action);
    payload = randomArray(payload.size());
    return result;
}

float SymmetricEncryption::restart()
{
    trial++;
    symEncKey = randomArray(symEncKey.size());
    payload = randomArray(payload.size());
    return 0;
}

ParameterVector SymmetricEncryption::randomArray(const ushortT arrSize)
{
    ParameterVector vec(arrSize);
    for_each(vec.begin(), vec.end(), [](ParameterType &val) {
        val = RandomUtils::randomPositive(65535);
    });
    
    return vec;
}

ParameterVector SymmetricEncryption::keyedPayload(const ParameterVector &data)
{
    ParameterVector vec;
    vec.insert(vec.begin(), symEncKey.begin(), symEncKey.end());
    vec.insert(vec.begin() + symEncKey.size(), data.begin(), data.end());
    return vec;
}

int SymmetricEncryption::distanceInputOutput(ParameterVector input, ParameterVector output)
{
    int result = 0;
    
    ParameterVector c;
    transform(input.begin(), input.end(), output.begin(), std::back_inserter(c),
              [](const auto& aa, const auto& bb) {
        return (aa ^ bb);
    });
    
    result = accumulate(c.begin(), c.end(), 0,
                        [](int val, int accum){
        return val + __builtin_popcount(accum);
    });
    
    if (result == 0) {
        return 1;
    }
    
    return -(result);
}

//////////////////////////////////////////////////////////////////////
/// SymEncFunctions
//////////////////////////////////////////////////////////////////////

void symEncFunc(ushortT thrID, ushortT start, ushortT end, float *bestReward,
            UnifiedNeuralModel *alices, UnifiedNeuralModel *bobs, vector<SymmetricEncryption *> *envs)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryption *env = envs->at(thrID);
    float reward = env->restart();
    int stepCounter = 0;
    int i = env->trial;
    // NOTE!! During the first half of maxSteps, it will evolve eve, then
    // the other half it will evolve bob, which is outlined as halfMaxSteps
    int halfMaxSteps = env->maxSteps / 2;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    while (current <= end) {
        float accumReward = reward;
        UNMCell *aliceCell = alices->cells[current];
        UNMCell *bobCell = bobs->cells[current];
        
        while(env->trial == i && stepCounter < halfMaxSteps) {
            ParameterVector alicePayload = env->keyedPayload(env->payload);
            ParameterVector actionAlice = UNMFunctions::step(reward, alicePayload, aliceCell);
            ParameterVector bobPayload = env->keyedPayload(actionAlice);
            ParameterVector actionBob = UNMFunctions::step(reward, bobPayload, bobCell);
            reward = env->step(actionBob);
            accumReward += reward;
            stepCounter++;
//                    printf("%i Obs: %.0f, Act: %.4f Reward: %f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
//                    printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %f\n",
//                           thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        UNMFunctions::endCellEpisode(reward, 1, aliceCell);
        UNMFunctions::endCellEpisode(reward, 1, bobCell);
        
        reward = env->restart();
        stepCounter = 0;
        i = env->trial;
        current++;
    }

//            printf("Thread %i best: %f\n", thrID, bestSoFar);
    *bestReward = bestSoFar;
}

void adversarialFunc(ushortT thrID, ushortT start, ushortT end, float *bestReward,
            UnifiedNeuralModel *alices, UnifiedNeuralModel *eves, vector<SymmetricEncryption *> *envs)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryption *env = envs->at(thrID);
    float reward = env->restart();
    int stepCounter = 0;
    int i = env->trial;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    while (current <= end) {
        float accumReward = reward;
        UNMCell *aliceCell = alices->cells[current];
        UNMCell *eveCell = eves->cells[current];
        
        while(env->trial == i && stepCounter < env->maxSteps) {
            ParameterVector alicePayload = env->keyedPayload(env->payload);
            ParameterVector actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
            ParameterVector actionEve = UNMFunctions::step(reward, actionAlice, eveCell);
            reward = env->step(actionEve);
            accumReward += reward;
            stepCounter++;
//                    printf("%i Obs: %.0f, Act: %.4f Reward: %f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
//                    printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %f\n",
//                           thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        UNMFunctions::endCellEpisode(0, 1, aliceCell);
        UNMFunctions::endCellEpisode(reward, 1, eveCell);
        
        reward = env->restart();
        stepCounter = 0;
        i = env->trial;
        current++;
    }

//            printf("Thread %i best: %f\n", thrID, bestSoFar);
    *bestReward = bestSoFar;
}

float SymEncFunctions::symEncNetwork(PConfig *pConf)
{
    ushortT population = pConf->populationSize();
    uintT generations = pConf->generations();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    
    vector<SymmetricEncryption *> envs = symEncVector(numThreads, pConf);
    
    uintT eveAdvantage = envs[0]->adversarialAdvantage;
    int numberObsVars = envs[0]->observationVars;
    int numberActionVars = envs[0]->actionVars;
    
    const char *alicesPrefix = "alices";
    const char *bobsPrefix = "bobs";
    const char *evesPrefix = "eves";
    
    // Encrypts
    UnifiedNeuralModel alices = UNMFunctions::configureModel(numberObsVars, numberActionVars, pConf, alicesPrefix);
    // Decrypts
    UnifiedNeuralModel bobs = UNMFunctions::configureModel(numberObsVars, numberActionVars, pConf, bobsPrefix);
    // Adversarial
    UnifiedNeuralModel eves = UNMFunctions::configureModel(numberActionVars, numberActionVars, pConf, evesPrefix);
    
    vector<float> rewards(numThreads);
    bool evolveBob = false;
    bool executeAdversary = false;
    uintT currentGen = 0;
    uintT genAdversarial = 0;
    const char *bobStr = "Bob (Decrypt)";
    const char *aliceStr = "Alice (Encrypt)";
    const char *eveStr = "Eve (Adversary)";
    
    while (currentGen < generations) {
        const char *toEvolve = evolveBob ? bobStr : aliceStr;
        const char *whoPlays = executeAdversary ? eveStr : toEvolve;
        auto thFunc = executeAdversary ? adversarialFunc : symEncFunc;
        
        printf("Generation: %i of %i; adversarial: %i; Calculating: %s\n", currentGen, generations, genAdversarial, whoPlays);
        
        vector<thread> trds;
        
        for (int i = 0; i < numThreads; i++) {
            trds.push_back(thread(
                        thFunc,
                        i,
                        i * cellsPerThread,
                        i * cellsPerThread + cellsPerThread - 1,
                        &(rewards[i]),
                        &alices,
                        executeAdversary ? &eves : &bobs,
                        &envs
                        ));
        }
        
        for_each(trds.begin(), trds.end(), [](thread &t){
            t.join();
        });
        
        sort(rewards.rbegin(), rewards.rend());
        printf("From all threads, best was: %f\n", rewards[0]);
        
        if (executeAdversary == false) {
            if (evolveBob == false) {
                SymEncFunctions::spectrumEvolve(&alices, &bobs);
                UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix);
                evolveBob = true;
            } else {
                SymEncFunctions::spectrumEvolve(&bobs, &alices);
                UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix);
                evolveBob = false;
                currentGen++;
                executeAdversary = eveAdvantage > 0;
                printf("----------------------------------------\n");
            }
        }
        else {
            UNMFunctions::spectrumDiversityEvolve(&eves);
            UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix);
            genAdversarial++;
        }
        
        if (genAdversarial > eveAdvantage) {
            genAdversarial = 0;
            executeAdversary = false;
            printf("----------------------------------------\n");
        }
    }
    
    if (pConf->saveToFile()) {
        string bisunaName = pConf->bisunaFile();
        string alicesName = alicesPrefix + bisunaName;
        string bobsName = bobsPrefix + bisunaName;
        string evesName = evesPrefix + bisunaName;
        NNExFunction::writeBiSUNAModel(&alices, alicesName.c_str());
        NNExFunction::writeBiSUNAModel(&bobs, bobsName.c_str());
        NNExFunction::writeBiSUNAModel(&eves, evesName.c_str());
    }
    
    for_each(envs.begin(), envs.end(), [](ReinforcementEnvironment *env){
        delete env;
    });
    
    return rewards[0];
}

vector<SymmetricEncryption *> SymEncFunctions::symEncVector(const ushortT numEnv, PConfig *pConf)
{
    string eCC = pConf->environmentConf();
    int obs = 0;
    int act = 0;
    vector<SymmetricEncryption *> envs;
    
    for (ushort i = 0; i < numEnv; i++) {
        SymmetricEncryption *env = new SymmetricEncryption(i, eCC.c_str());
        env->start(obs, act);
        envs.push_back(env);
    }
    
    return envs;
}

void SymEncFunctions::spectrumEvolve(UnifiedNeuralModel *activeModel, UnifiedNeuralModel *passiveModel)
{
    UNMConfig &conf = activeModel->config;
    NNoveltyMap &nmap = activeModel->nmap;
    vector<UNMCell *> &cells = activeModel->cells;
    vector<ushortT> lst;
    
    UNMFunctions::noveltyMapParents(cells, &nmap);
    UNMFunctions::noveltyPopulationModification(conf.unmStepMuts, nmap, cells, &lst);
    
    sort(lst.begin(), lst.end());
    
    for (int i = 0; i < lst.size(); i++) {
        ushortT correlated = lst[i];
        
         if (correlated == i) {
            continue;
        }
        
        UNMCell *cellToMove = passiveModel->cells[i];
        UNMCell *cellCorrelated = passiveModel->cells[correlated];
        
        cellToMove->netMod->nParams.networkID = correlated;
        cellCorrelated->netMod->nParams.networkID = i;
        
        passiveModel->cells[correlated] = cellToMove;
        passiveModel->cells[i] = cellCorrelated;
    }
    
    for (NMStr &str : nmap.nmStrs) {
        // After finishing using the nmap, the stored pointer
        // should be nullified, however, the values will remain
        // stored in the nmap
        str.ptr = NULL;
    }
    
    conf.unmGeneration++;
    conf.unmSteps = 0;
}
