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
    maxAdversarialAdvantage = (uintT)ini.GetInteger("SymmetricEncryption", "MaximumAdversarialAdvantage", 1000);
    
    maxExpectedReward = (int)ini.GetInteger("SymmetricEncryption", "MaxExpectedReward", 100);
    numGensMaxER = (uintT)ini.GetInteger("SymmetricEncryption", "NumGensMaxExpectedReward", 1);
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

void symEncFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward,
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
    ushortT bestIndex = current;
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
            bestIndex = current;
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
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
}

void adversarialFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward,
            UnifiedNeuralModel *alices, UnifiedNeuralModel *eves, vector<SymmetricEncryption *> *envs)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryption *env = envs->at(thrID);
    float reward = env->restart();
    int stepCounter = 0;
    int i = env->trial;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    ushortT bestIndex = current;
    UNMCell *bestAlice = alices->cells[bestReward->second];
    
    while (current <= end) {
        float accumReward = reward;
        UNMCell *eveCell = eves->cells[current];
        
        while(env->trial == i && stepCounter < env->maxSteps) {
            ParameterVector alicePayload = env->keyedPayload(env->payload);
            ParameterVector actionAlice = UNMFunctions::step(0, alicePayload, bestAlice);
            ParameterVector actionEve = UNMFunctions::step(reward, actionAlice, eveCell);
            reward = env->step(actionEve);
            accumReward += reward;
            stepCounter++;
//                    printf("%i Obs: %.0f, Act: %.4f Reward: %f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
            bestIndex = current;
//                    printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %f\n",
//                           thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        UNMFunctions::endCellEpisode(0, 1, bestAlice);
        UNMFunctions::endCellEpisode(reward, 1, eveCell);
        
        reward = env->restart();
        stepCounter = 0;
        i = env->trial;
        current++;
    }

//            printf("Thread %i best: %f\n", thrID, bestSoFar);
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
}

float SymEncFunctions::symEncNetwork(PConfig *pConf)
{
    ushortT population = pConf->populationSize();
    uintT generations = pConf->generations();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    
    vector<SymmetricEncryption *> envs = symEncVector(numThreads, pConf);
    
    uintT maxEveAdvantage = envs[0]->maxAdversarialAdvantage;
    int numberObsVars = envs[0]->observationVars;
    int numberActionVars = envs[0]->actionVars;
    int maxExpectedReward = envs[0]->maxExpectedReward;
    int numGensMaxER = envs[0]->numGensMaxER;
    
    const char *alicesPrefix = "alices";
    const char *bobsPrefix = "bobs";
    const char *evesPrefix = "eves";
    
    // Encrypts
    UnifiedNeuralModel alices = UNMFunctions::configureModel(numberObsVars, numberActionVars, pConf, alicesPrefix);
    // Decrypts
    UnifiedNeuralModel bobs = UNMFunctions::configureModel(numberObsVars, numberActionVars, pConf, bobsPrefix);
    // Adversarial
    UnifiedNeuralModel eves = UNMFunctions::configureModel(numberActionVars, numberActionVars, pConf, evesPrefix);
    
    vector<pair<float, ushortT>> rewardIDPair(numThreads);
    bool evolveBob = false;
    bool evolveAB = true; // Use this flag to signal that Alice or Bob should be evolved
    bool executeAdversary = false; // Use this flag to signal that the adversary should execute and evolve
    bool finishExecution = false; // When maxExpectedReward and numGensMaxER match, this will be set to true.
    
    // Flags to know if Alice or Bob have reached a maximum expected reward
    bool didAliceMaxER = 0;
    bool didBobMaxER = 0;
    
    // Flag to make sure Alice and Bob ran before Eve is going to analyze the cyphertext
    bool didAliceExecute = false;
    
    // Helps to keep track of the last Alice best reward ID, specially when running the adversarial, because this
    // is used to identify which agent is going to be "analyzed" by the eves population
    ushortT lastBestID = 0;
    
    // In order to fill numGensMaxER requirement, we need to count how many generations the maxExpectedReward has
    // been set to true.
    uintT generationCounter = 0;
    uintT currentGen = 0;
    uintT totalGens = generations;
    uintT genAdversarial = 1;
    const char *bobStr = "Bob-Decrypt";
    const char *aliceStr = "Alice-Encrypt";
    const char *eveStr = "Eve-Adversary";
    
    while (currentGen < totalGens && finishExecution == false) {
        const char *toEvolve = evolveBob ? bobStr : aliceStr;
        const char *whoPlays = executeAdversary ? eveStr : toEvolve;
        auto thFunc = executeAdversary ? adversarialFunc : symEncFunc;
        
        printf("Execution: %i of %i (Alice Gen: %i, Bob Gen: %i); Adversarial: %i of %i (Gen: %i); Calculating: %s\n",
           currentGen, totalGens, alices.config.unmGeneration, bobs.config.unmGeneration, genAdversarial,
               maxEveAdvantage, eves.config.unmGeneration, whoPlays);
        
        vector<thread> trds;
        
        for (int i = 0; i < numThreads; i++) {
            trds.push_back(thread(
                        thFunc,
                        i,
                        i * cellsPerThread,
                        i * cellsPerThread + cellsPerThread - 1,
                        &(rewardIDPair[i]),
                        &alices,
                        executeAdversary ? &eves : &bobs,
                        &envs));
        }
        
        for_each(trds.begin(), trds.end(), [](thread &t){
            t.join();
        });
        
        auto sortByFst = [](pair<float, ushortT> a, pair<float, ushortT> b){
            return a.first > b.first;
        };
        
        sort(rewardIDPair.rbegin(), rewardIDPair.rend(), sortByFst);
        float bestReward = rewardIDPair[0].first;
        printf("From all threads, best was: %f\n", bestReward);
        bool isRewardGreater = bestReward >= maxExpectedReward;

        if (evolveAB == true) {
            if (evolveBob == false) {
                SymEncFunctions::spectrumEvolve(&alices, &bobs);
                UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix);
                didAliceMaxER = isRewardGreater;
                evolveBob = true;
            } else {
                SymEncFunctions::spectrumEvolve(&bobs, &alices);
                UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix);
                evolveBob = false;
                currentGen++;
                didBobMaxER = isRewardGreater;
                generationCounter = didAliceMaxER && didBobMaxER ? generationCounter + 1 : 0;
                // Switch to adversary mode when both sides have been able to reach a
                // reward equal or greater than expected.
                printf("----------------------------------------\n");
            }
            
            if (generationCounter >= numGensMaxER) {
                evolveAB = !(didAliceMaxER && didBobMaxER);
                continue;
            }
        } else if (executeAdversary == true) {
            UNMFunctions::spectrumDiversityEvolve(&eves);
            UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix);
            genAdversarial++;
            // This flags signals if eve was able to decrypt A-B communication, when that happens,
            // it forces both agents to continue evolving its communication
            bool didEveDecrypt = isRewardGreater;
            rewardIDPair[0].first = 0;
            rewardIDPair[0].second = lastBestID;
            
            if (didEveDecrypt == true) {
                
                UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix, true);
                
                // In case Eve was able to decrypt A&B cyphertext, they are punished and forced
                // to continue evolving.
                alices.cells[lastBestID]->cellFitness -= 1000;
                bobs.cells[lastBestID]->cellFitness -= 1000;
                didAliceMaxER = false; 
                didBobMaxER = false;
                didEveDecrypt = false;
                evolveAB = true;
                executeAdversary = false;
                generationCounter = 0;
                genAdversarial = 1;
            }
        }
        
        if (genAdversarial > maxEveAdvantage) {
            genAdversarial = 1;
            executeAdversary = false;
            evolveBob = false;
            evolveAB = generationCounter < numGensMaxER;
            printf("****************************************\n");
        }
        
        if (evolveAB == false && executeAdversary == false) {
            // It could happen that sometimes, when A&B are tested again, their best reward is not
            // the max ER, then it is neccessary to continue evolving.
            if (bestReward < maxExpectedReward) {
                generationCounter = 0;
                evolveAB = true;
                continue;
            }
            
            // It is possible to only reliably get the best after both A&B have evolved and they are tested
            // once again without modifying their positions, which is the one used by eves to analyze
            lastBestID = rewardIDPair[0].second;
            
            if (didAliceExecute == false) {
                didAliceExecute = true;
                evolveBob = true;
                continue;
            }
            
            if (maxEveAdvantage > 0) {
                executeAdversary = true;
                didAliceMaxER = false;
                didBobMaxER = false;
                
                UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix, true);
                UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix, true);
                printf("Alice #%i, will be used by the adversary with reward of: %f\n", lastBestID, bestReward);
                printf("||||||||||||||||||||||||||||||||||||||||\n");
            } else {
                printf("No adversarial advantage, continue evolving Alice and Bob\n");
                printf("****************************************\n");
                evolveAB = true;
            }
            
            didAliceExecute = false;
            evolveBob = false;
            // We need to skip all other conditionals to switch context and execute eve from the next iteration
        }
        
        // This boolean confirms that, after a number of generations with max
        // expected reward, agents are still getting the expected values.
        bool isGenCounterGreater = generationCounter >= (numGensMaxER + 1);
        
        // End execution, even if it has not reached the maximum generation number, when
        // reward is greater than expected and this value has been obtained continuously
        // for multiple generations.
        finishExecution = isRewardGreater && isGenCounterGreater;
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
    
    return rewardIDPair[0].first;
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
    
    for (UNMCell *cell : passiveModel->cells) {
        cell->cellFitness = 0;
    }
    
    conf.unmGeneration++;
    conf.unmSteps = 0;
}
