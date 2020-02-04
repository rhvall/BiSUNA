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
    int result = SymmetricEncryption::distanceInputOutput(payload, action);
    payload = SymmetricEncryption::randomArray(actionVars);
    return result;
}

float SymmetricEncryption::restart()
{
    trial++;
    symEncKey = SymmetricEncryption::randomArray(symEncKey.size());
    payload = SymmetricEncryption::randomArray(actionVars);
    return 0;
}

ParameterVector SymmetricEncryption::keyedPayload(const ParameterVector &data)
{
    ParameterVector vec;
    vec.insert(vec.begin(), symEncKey.begin(), symEncKey.end());
    vec.insert(vec.begin() + symEncKey.size(), data.begin(), data.end());
    return vec;
}

ParameterVector SymmetricEncryption::randomArray(const ushortT arrSize)
{
    ParameterVector vec(arrSize);
    for_each(vec.begin(), vec.end(), [](ParameterType &val) {
        val = RandomUtils::randomPositive(65535);
    });
    
    return vec;
}

#ifdef CONTINUOUS_PARAM
float SymmetricEncryption::distanceInputOutput(ParameterVector input, ParameterVector output)
{
    float result = 0;
    
    if (input == output) {
        result = 100 * (float)input.size();
        return result;
    }
    
    ParameterVector c;
    transform(input.begin(), input.end(), output.begin(), std::back_inserter(c),
              [](const auto& aa, const auto& bb) {
        return powf((aa - bb), 2); // Distance function sqrt((a1 - b1) ^ 2 + (a2 - b2) ^ 2)
    });
    
    result = accumulate(c.begin(), c.end(), 0,
                        [](float accum, float val){
        if (val == 0) {
            return accum + 50;
        }
        else {
            return accum - sqrtf(val);
        }
    });
    
    return result;
}
#else
float SymmetricEncryption::distanceInputOutput(ParameterVector input, ParameterVector output)
{
    int result = 0;
    
    if (input == output) {
        result = 100 * (int)input.size();
        return (float)result;
    }
    
    ParameterVector c;
    transform(input.begin(), input.end(), output.begin(), std::back_inserter(c),
              [](const auto& aa, const auto& bb) {
        return (aa ^ bb);
    });
    
    result = accumulate(c.begin(), c.end(), 0,
                        [](int accum, int val){
        if (val == 0) {
            return accum + 50;
        }
        else {
            return accum - (__builtin_popcount(val) * 10);
        }
    });
    
    return (float)result;
}
#endif

//////////////////////////////////////////////////////////////////////
/// SymEncFunctions
//////////////////////////////////////////////////////////////////////

void symEncFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward, bool bobOrEve,
            UnifiedNeuralModel *alices, UnifiedNeuralModel *companion, vector<SymmetricEncryption *> *envs)
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
        ushortT aliceIndex = bobOrEve ? current : bestReward->second;
        UNMCell *aliceCell = alices->cells[aliceIndex];
        UNMCell *companionCell = companion->cells[current];
        
        while(env->trial == i && stepCounter < halfMaxSteps) {
            ParameterVector alicePayload = env->keyedPayload(env->payload);
            ParameterVector envAction;
            
            if (bobOrEve == true) { // When true, it's Bob's time
                ParameterVector actionAlice = UNMFunctions::step(reward, alicePayload, aliceCell);
                ParameterVector bobPayload = env->keyedPayload(actionAlice);
                envAction = UNMFunctions::step(reward, bobPayload, companionCell);
            }
            else {
                ParameterVector actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
                envAction = UNMFunctions::step(reward, actionAlice, companionCell);
            }
            
            reward = env->step(envAction);
            accumReward += reward;
            stepCounter++;
//            printf("%i Obs: %.0f, Act: %.4f Reward: %f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
            bestIndex = current;
//            printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %f\n",
//                   thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        float aliceReward = bobOrEve ? reward : 0;
        UNMFunctions::endCellEpisode(aliceReward, 1, aliceCell);
        UNMFunctions::endCellEpisode(reward, 1, companionCell);
        
        reward = env->restart();
        stepCounter = 0;
        i = env->trial;
        current++;
    }

//    printf("Thread %i best: %f\n", thrID, bestSoFar);
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
    int maxExpectedReward = 100 * numberActionVars * envs[0]->maxSteps / 2;
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
    // Use this flag to signal that the adversary should execute and evolve. When running the CPA, it should
    // execute first in order to learn to distinguish between Payloads and Ciphertext
    bool executeAdversary = false;
    bool finishExecution = false; // When maxExpectedReward and numGensMaxER match, this will be set to true.
    
    // Flags to know if Alice or Bob have reached a maximum expected reward
    bool didAliceMaxER = 0;
    bool didBobMaxER = 0;
    
    // Flag to make sure Alice and Bob ran before Eve is going to analyze the ciphertext
    bool didAliceExecute = false;
    
    // Helps to keep track of the last Alice best reward ID, specially when running the adversarial, because this
    // is used to identify which agent is going to be "analyzed" by the eves population
    ushortT lastBestID = 0;
    
    // In order to fill numGensMaxER requirement, we need to count how many generations the maxExpectedReward has
    // been set to true.
    uintT generationCounter = 0;
    uintT currentGen = 0;
    uintT totalGens = generations;
    uintT genAdversarial = 0;
    const char *bobStr = "Bob-Decrypt";
    const char *aliceStr = "Alice-Encrypt";
    const char *eveStr = "Eve-Adversary";
    
    while (currentGen < totalGens && finishExecution == false) {
        const char *toEvolve = evolveBob ? bobStr : aliceStr;
        const char *whoPlays = executeAdversary ? eveStr : toEvolve;
        
        printf("Execution: %i of %i (Alice Gen: %i, Bob Gen: %i); Adversarial: %i of %i (Gen: %i); Calculating: %s\n",
           currentGen, totalGens, alices.config.unmGeneration, bobs.config.unmGeneration, genAdversarial,
               maxEveAdvantage, eves.config.unmGeneration, whoPlays);
        
        vector<thread> trds;
        
        for (int i = 0; i < numThreads; i++) {
            trds.push_back(thread(
                        symEncFunc,
                        i,
                        i * cellsPerThread,
                        i * cellsPerThread + cellsPerThread - 1,
                        &(rewardIDPair[i]),
                        !executeAdversary, // Execute adversary is inverse to execute Bob
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
        printf("From all threads, best was: %0.2f\n", bestReward);
        bool isRewardGreater = bestReward >= maxExpectedReward;

        if (evolveAB == true) {
            vector<ushortT> lst;
            
            if (evolveBob == false) {
                UNMFunctions::spectrumDiversityEvolve(&alices, &lst);
                arrangeRelatedModel(lst, &bobs);
                UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix);
                didAliceMaxER = isRewardGreater;
                evolveBob = true;
            } else {
                UNMFunctions::spectrumDiversityEvolve(&bobs, &lst);
                arrangeRelatedModel(lst, &alices);
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
                
                // In case Eve was able to decrypt A&B ciphertext, they are punished and forced
                // to continue evolving.
                alices.cells[lastBestID]->cellFitness -= 1000;
                bobs.cells[lastBestID]->cellFitness -= 1000;
                didAliceMaxER = false; 
                didBobMaxER = false;
                didEveDecrypt = false;
                evolveAB = true;
                executeAdversary = false;
                generationCounter = 0;
                genAdversarial = 0;
            }
        }
        
        if (maxEveAdvantage != 0 && genAdversarial > maxEveAdvantage) {
            genAdversarial = 0;
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
        bool isGenCounterGreater = generationCounter >= numGensMaxER;
        
        // We need to check if adversary had the opportunity to disrupt A&B when an advantage is set.
        bool didAdversaryPlay = (maxEveAdvantage > 0) && (genAdversarial > 1);
        
        // End execution, even if it has not reached the maximum generation number, when
        // reward is greater than expected and this value has been obtained continuously
        // for multiple generations.
        finishExecution = isRewardGreater && isGenCounterGreater && didAdversaryPlay;
    }
    
    if (pConf->saveToFile()) {
        UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix, true);
        UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix, true);
        UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix, true);
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

void SymEncFunctions::arrangeRelatedModel(const vector<ushortT> &lst, UnifiedNeuralModel *relatedUNM)
{
    size_t lstSize = lst.size();
    for (int i = 0; i < lstSize; i++) {
        ushortT correlated = lst[i];
        
        if (correlated == i) {
            continue;
        }
        
        UNMCell *cellToMove = relatedUNM->cells[i];
        UNMCell *cellCorrelated = relatedUNM->cells[correlated];
        
        cellToMove->netMod->nParams.networkID = correlated;
        cellCorrelated->netMod->nParams.networkID = i;
        
        relatedUNM->cells[correlated] = cellToMove;
        relatedUNM->cells[i] = cellCorrelated;
    }
    
    for (UNMCell *cell : relatedUNM->cells) {
        cell->cellFitness = 0;
    }
}
