//
//  SymmetricEncryptionCPA.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 5/12/19.
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

#include "SymmetricEncryptionCPA.hpp"
#include "SymmetricEncryption.hpp"
#include "Configuration/PConfig.hpp"
#include "RandomUtils.hpp"
#include "NN/NNetwork.hpp"
#include <thread>
#include "RandomUtils.hpp"
#include "NN/NNetworkExtra.hpp"

SymmetricEncryptionCPA::SymmetricEncryptionCPA(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    trial = -1;
    maxSteps = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "MaxSteps", 500);
    int keySize = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "KeySize", 9);
    int payloadSize = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "PayloadSize", 9);
    maxAdversarialAdvantage = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "MaximumAdversarialAdvantage", 1000);
    
    numGensMaxER = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "NumGensMaxExpectedReward", 1);
    
    trainAdversary = ini.GetBoolean("SymmetricEncryptionCPA", "AdversaryRequiresTraining", true);
    
    preTrainAB = ini.GetBoolean("SymmetricEncryptionCPA", "PreTrainAB", true);
    
    // observation var is multiplied by two to allocate space for the
    // key, which is feed to every step and replaced every restart
    observationVars = payloadSize + keySize;
    actionVars = payloadSize;
    
    // payload replaces the "observation" pointer with a vector
    payload = ParameterVector(payloadSize);
    payloadLocation = false;
    symEncKey = ParameterVector(keySize);
}

SymmetricEncryptionCPA::~SymmetricEncryptionCPA()
{
}

void SymmetricEncryptionCPA::start(int &numObsVars, int &numActionVars)
{
    numObsVars = observationVars;
    numActionVars = actionVars;
    
    restart();
}

float SymmetricEncryptionCPA::step(ParameterType *action)
{
    printf("This function is not used in this environment, use the vectorized version instead");
    return 0;
}

float SymmetricEncryptionCPA::step(ParameterVector action)
{
    int result = SymmetricEncryption::distanceInputOutput(payload, action);
    payload = SymmetricEncryption::randomArray(actionVars);
    return result;
}

float SymmetricEncryptionCPA::stepAdversary(ParameterType action)
{
#ifdef CONTINUOUS_PARAM
    int bitsLeft = action > 0 ? (action > 2 ? (action > 4 ? (action > 6 ? 8 : 6 ) : 4) : 2) : 0;
    int bitsRight = action < 0 ? (action < -2 ? (action < -4 ? (action < -6 ? 8 : 6) : 4) : 2) : 0;
#else
    int bitsLeft = __builtin_popcount(action & 65280);
    int bitsRight = __builtin_popcount(action & 255);
#endif
    int result = payloadLocation ? bitsLeft - bitsRight : bitsRight - bitsLeft;
    result *= ADVERSARY_TRAIN_SMALL_REWARD;
    
    if (action == 0) {
        result += ADVERSARY_TRAIN_NEGATIVE_REWARD;
    }
    
    if (payloadLocation == true && bitsLeft == ADVERSARY_TRAIN_BITS && bitsRight == 0) {
        result += ADVERSARY_TRAIN_REWARD;
    }
    
    if (payloadLocation == false && bitsLeft == 0 && bitsRight == ADVERSARY_TRAIN_BITS) {
        result += ADVERSARY_TRAIN_REWARD;
    }
    
    payload = SymmetricEncryption::randomArray(payload.size());
    return result;
}

float SymmetricEncryptionCPA::restart()
{
    trial++;
    symEncKey = SymmetricEncryption::randomArray(symEncKey.size());
    payload = SymmetricEncryption::randomArray(payload.size());
    return 0;
}

ParameterVector SymmetricEncryptionCPA::keyedPayload(const ParameterVector &data)
{
    ParameterVector vec;
    vec.insert(vec.begin(), symEncKey.begin(), symEncKey.end());
    vec.insert(vec.begin() + symEncKey.size(), data.begin(), data.end());
    return vec;
}

ParameterVector SymmetricEncryptionCPA::adversaryPayload(const ParameterVector &ciphertext)
{
    ParameterVector vec;
    float rndVal = RandomUtils::randomFloat(-1, 1);
    ParameterVector randVector = SymmetricEncryption::randomArray(actionVars);
    if (rndVal > 0) {
        // It signals that the correct payload is located in the first
        // section of the vector
        payloadLocation = true;
        vec.insert(vec.end(), payload.begin(), payload.end());
        vec.insert(vec.end(), randVector.begin(), randVector.end());
    }
    else {
        // This means the correct payload is on the second half of the vector
        payloadLocation = false;
        vec.insert(vec.end(), randVector.begin(), randVector.end());
        vec.insert(vec.end(), payload.begin(), payload.end());
    }
    
    vec.insert(vec.end(), ciphertext.begin(), ciphertext.end());
    
    return vec;
}

//////////////////////////////////////////////////////////////////////
/// SymEncFunctions
//////////////////////////////////////////////////////////////////////

void clearFitness(UnifiedNeuralModel *unm)
{
    for (UNMCell *cell : unm->cells) {
        cell->cellFitness = 0;
    }
}

bool sortByFst(pair<float, ushortT> a, pair<float, ushortT> b)
{
    return a.first < b.first;
}

void symEncFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward, UnifiedNeuralModel *alices,
            UnifiedNeuralModel *bobs, UnifiedNeuralModel *eves, vector<SymmetricEncryptionCPA *> *envs)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryptionCPA *env = envs->at(thrID);
    float reward = env->restart();
    float eveReward = env->restart();
    int stepCounter = 0;
    int i = env->trial;
    // NOTE!! During the first half of maxSteps, it will evolve eve, then
    // the other half it will evolve bob, which is outlined as halfMaxSteps
    int halfMaxSteps = env->maxSteps / 2;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    float bestSoFarEve = EXTREME_NEGATIVE_REWARD;
    float rewardSum = 0;
    float rewardSumEve = 0;
    ushortT bestIndex = current;
    ushortT bestIndexEve = current;
    while (current <= end) {
        float accumReward = reward;
        float accumRewardEve = 0;
        UNMCell *aliceCell = alices->cells[current];
        UNMCell *bobCell = bobs->cells[current];
        UNMCell *eveCell = eves != NULL ? eves->cells[current] : NULL;
        
        while(env->trial == i && stepCounter < halfMaxSteps) {
            ParameterVector alicePayload = env->keyedPayload(env->payload);
            ParameterVector actionAlice = UNMFunctions::step(reward, alicePayload, aliceCell);
            ParameterVector bobPayload = env->keyedPayload(actionAlice);
            ParameterVector bobAction = UNMFunctions::step(reward, bobPayload, bobCell);
            ParameterVector adversaryPayload = env->adversaryPayload(actionAlice);
            
            reward = env->step(bobAction);
            
            if (eveCell != NULL) {
                ParameterVector eveAction = UNMFunctions::step(eveReward, adversaryPayload, eveCell);
                eveReward = env->stepAdversary(eveAction[0]);
                reward -= eveReward;
                accumRewardEve += eveReward;
                rewardSumEve += eveReward;
            }
            
            accumReward += reward;
            stepCounter++;
            rewardSum += reward;
//            printf("%i Obs: %.0f, Act: %.4f Reward: %0.2f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
            bestIndex = current;
//            printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %0.2f\n",
//                   thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        if (accumRewardEve > bestSoFarEve) {
            bestSoFarEve = accumRewardEve;
            bestIndexEve = current;
        }
        
        UNMFunctions::endCellEpisode(reward, 1, aliceCell);
        UNMFunctions::endCellEpisode(reward, 1, bobCell);
        eveCell != NULL ? UNMFunctions::endCellEpisode(eveReward, 1, eveCell) : void();
        
        reward = env->restart();
        stepCounter = 0;
        i = env->trial;
        current++;
    }

    float eveForAB = eves != NULL ? eves->cells[bestIndex]->cellFitness : 0;
    float abForEve = alices->cells[bestIndexEve]->cellFitness;
    
    printf("Thread,%i,%i,%0.2f,%0.2f,%i,%0.2f,%0.2f\n", thrID, bestIndex, bestSoFar, eveForAB, bestIndexEve, bestSoFarEve, abForEve);
//    printf("Mean AB: %0.2f, Eve: %0.2f\n", rewardSum / halfMaxSteps, rewardSumEve / halfMaxSteps);
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
}

float SymEncCPAFunctions::symEncCPANetwork(PConfig * const pConf)
{
    ushortT population = pConf->populationSize();
    uintT generations = pConf->generations();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    
    vector<SymmetricEncryptionCPA *> envs = symEncVector(numThreads, pConf);
    
    int numberObsVars = envs[0]->observationVars;
    int numberActionVars = envs[0]->actionVars;
    int numGensMaxER = envs[0]->numGensMaxER;
    uintT maxEveAdvantage = envs[0]->maxAdversarialAdvantage;
    bool preTrainAB = envs[0]->preTrainAB;
        
    const char *alicesPrefix = "alicesCPA";
    const char *bobsPrefix = "bobsCPA";
    const char *evesPrefix = "evesCPA";
    
    // Encrypts
    UnifiedNeuralModel alices = UNMFunctions::configureModel(numberObsVars, numberActionVars, pConf, alicesPrefix);
    // Decrypts
    UnifiedNeuralModel bobs = UNMFunctions::configureModel(numberObsVars, numberActionVars, pConf, bobsPrefix);
    // Adversarial. Its input has three elements: first action vars represent Payload #1, second = Payload #2 and
    // the third is the ciphertext. Its output is only a single 16bit element that counts all 8 bits from left
    // to right as the ciphertext comming from payload #1. All other remaining bits signal ciphertext was derived
    // from payload #1. For that reason, before comfronting Eve against A&B, it needs to first learn how to
    // differentiate between payloads.
    UnifiedNeuralModel eves = UNMFunctions::configureModel(numberActionVars * 3, 1, pConf, evesPrefix);
    
    UNMCell *lastBestAlice = NULL;
    vector<pair<float, ushortT>> rewardIDPair(numThreads);
    bool evolveBob = false;
    bool evolveAB = true; // Use this flag to signal that Alice or Bob should be evolved
    bool finishExecution = false; // When maxExpectedReward and numGensMaxER match, this will be set to true.
    
    // Flags to know if Alice or Bob have reached a maximum expected reward
    bool didAliceMaxER = 0;
    bool didBobMaxER = 0;
    
    // In order to fill numGensMaxER requirement, we need to count how many generations the maxExpectedReward has
    // been set to true.
    uintT generationCounter = 0;
    uintT currentGen = 0;
    uintT totalGens = generations;
    float tolerancePercentage = 0.85;
    float bestReward = 0;
    float maxReward = 100 * numberActionVars * envs[0]->maxSteps / 2;
    float maxRewardEve = envs[0]->ADVERSARY_TRAIN_REWARD * maxEveAdvantage + envs[0]->ADVERSARY_TRAIN_SMALL_REWARD * envs[0]->ADVERSARY_TRAIN_BITS * maxEveAdvantage;
    maxRewardEve *= tolerancePercentage;
    const char *bobStr = "Bob-Decrypt";
    const char *aliceStr = "Alice-Encrypt";
    const char *eveStr = "Eve-Adversary";
    
    // Explain how log was formatted to be easily transformed into CSV
    printf("Max Reward A&B: %0.2f, Eve: %0.2f\n", maxReward, maxRewardEve);
    printf("From Thread format table: TreadID, (Best) A&B Number, A&B Score, Eve Score, (Best) Eve Number, Eve Score, A&B Score\n");
    printf("From finished A&B: Best Score for that generation, competing Eve for the best A&B index\n");
    printf("From finished Eve: Best Score for that generation\n");
    printf("From Adversary: Current execution, Max eve advantage, Current generation\n");
    printf("From Execution: Current execution, Max generations, Alice gen, Bob gen, Eve gen; who executes\n");
    printf("----------------------------------------\n");
    
    if (envs[0]->trainAdversary == true) {
        trainCPAAdversary(pConf, &eves, envs);
        SymEncCPAFunctions::replicateBestAdversary(&eves, &envs);
    }
    
    while (currentGen < totalGens && finishExecution == false) {
        const char *toEvolve = evolveBob ? bobStr : aliceStr;
        const char *whoPlays = evolveAB ? toEvolve : eveStr;
        
        printf("Execution,%i,%i,%i,%i,%i,%s\n",
           currentGen, totalGens, alices.config.unmGeneration, bobs.config.unmGeneration, eves.config.unmGeneration, whoPlays);
        
        if (evolveAB == true) {
            vector<thread> trds;
            
            for (int i = 0; i < numThreads; i++) {
                trds.push_back(thread(
                            symEncFunc,
                            i,
                            i * cellsPerThread,
                            i * cellsPerThread + cellsPerThread - 1,
                            &(rewardIDPair[i]),
                            &alices,
                            &bobs,
                            preTrainAB == false ? &eves : NULL,
                            &envs));
            }
            
            for_each(trds.begin(), trds.end(), [](thread &t){
                t.join();
            });
            
            sort(rewardIDPair.rbegin(), rewardIDPair.rend(), sortByFst);
            bestReward = rewardIDPair[0].first;
            ushortT bestRewardIdx = rewardIDPair[0].second;
            printf("Best,A&B,%0.2f,%0.2f\n", bestReward, eves.cells[bestRewardIdx]->cellFitness);
            
            vector<ushortT> lst;
             
            if (evolveBob == false) {
                UNMFunctions::spectrumDiversityEvolve(&alices, &lst);
                SymEncFunctions::arrangeRelatedModel(lst, &bobs);
                UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix);
                evolveBob = true;
                didAliceMaxER = bestReward >= maxReward;
                lastBestAlice = NULL;
            }
            else {
                UNMFunctions::spectrumDiversityEvolve(&bobs, &lst);
                SymEncFunctions::arrangeRelatedModel(lst, &alices);
                UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix);
                evolveBob = false;
                if (preTrainAB == false) {
                    evolveAB = false;
                    currentGen++;
                }
                didBobMaxER = bestReward >= maxReward;
                generationCounter += didAliceMaxER && didBobMaxER ? 1 : 0;
                // Switch to adversary mode when both sides have been able to reach a
                // reward equal or greater than expected.
                printf("----------------------------------------\n");
                lastBestAlice = alices.cells[rewardIDPair[0].second];
            }
            
            clearFitness(&eves);
        }
        else {
            bestReward = trainCPAAdversary(pConf, &eves, envs, lastBestAlice);
//            SymEncCPAFunctions::replicateBestAdversary(&eves, &envs);
            preTrainAB = false;
            generationCounter = bestReward >= maxRewardEve ? 0 : generationCounter;
            evolveAB = true;
        }
        
        // This boolean confirms that, after a number of generations with max
        // expected reward, agents are still getting the expected values.
        bool isGenCounterGreater = generationCounter >= numGensMaxER;
        
        if (preTrainAB == true && isGenCounterGreater == true) {
            preTrainAB = false;
            isGenCounterGreater = false;
            generationCounter = 0;
        }
        
        bool isPreTrain = preTrainAB == false;
        
        // End execution, even if it has not reached the maximum generation number, when
        // reward is greater than expected and this value has been obtained continuously
        // for multiple generations.
        finishExecution = isGenCounterGreater && (isPreTrain == false);
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

vector<SymmetricEncryptionCPA *> SymEncCPAFunctions::symEncVector(const ushortT numEnv, PConfig *const pConf)
{
    string eCC = pConf->environmentConf();
    int obs = 0;
    int act = 0;
    vector<SymmetricEncryptionCPA *> envs;
    
    for (ushort i = 0; i < numEnv; i++) {
        SymmetricEncryptionCPA *env = new SymmetricEncryptionCPA(i, eCC.c_str());
        env->start(obs, act);
        envs.push_back(env);
    }
    
    return envs;
}

//////////////////////////////////////////////////////////////////////
//////////////////// Adversary Training //////////////////
//////////////////////////////////////////////////////////////////////

void advTrainingFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward,
                     UnifiedNeuralModel *adversary, vector<SymmetricEncryptionCPA *> *envs, UNMCell *aliceCell = NULL)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryptionCPA *env = envs->at(thrID);
    float reward = env->restart();
    ushortT stepCounter = 0;
    int i = env->trial;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    ushortT bestIndex = current;
    vector<ParameterType> envPayload;
    uintT maxEveAdvantage = env->maxAdversarialAdvantage;
    while (current <= end) {
        float accumReward = reward;
        UNMCell *cell = adversary->cells[current];
        
        while(env->trial == i && stepCounter < maxEveAdvantage) {
            if (aliceCell != NULL) {
                envPayload = NNSFunction::process(env->keyedPayload(env->payload), aliceCell->netSt);
            }
            else {
                envPayload = env->payload;
            }
            
            ParameterVector payloadFull = env->adversaryPayload(envPayload);
            ParameterVector action = UNMFunctions::step(reward, payloadFull, cell);
            reward = env->stepAdversary(action[0]);
            accumReward += reward;
            stepCounter++;
//            printf("%i Obs: %.0f, Act: %.4f Reward: %0.2f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
            bestIndex = current;
//            printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %0.2f\n",
//                   thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        UNMFunctions::endCellEpisode(reward, 1, cell);
        
        reward = env->restart();
        stepCounter = 0;
        i = env->trial;
        current++;
    }

//    printf("Thread %i best: %0.2f\n", thrID, bestSoFar);
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
}

float SymEncCPAFunctions::trainCPAAdversary(PConfig *const pConf, UnifiedNeuralModel *advs, vector<SymmetricEncryptionCPA *> &envs, UNMCell *aliceCell)
{
    bool nullAlice = aliceCell == NULL;
    ushortT population = advs->config.unmPopulation;
    ushortT numThreads = envs.size();
    ushortT cellsPerThread = population / numThreads;
    ushortT numGensMER = envs[0]->numGensMaxER;
    uintT maxEveAdvantage = envs[0]->maxAdversarialAdvantage;
    
    const char *prefix = nullAlice ? "evesCPA-PreTrain" : "evesCPA";
    
    vector<pair<float, ushortT>> rewardIDPair(numThreads);
    
    // Helps to keep track of the last best reward ID, specially when running the adversarial, because this
    // is used to identify which agent is going to be "analyzed" by the eves population
    ushortT lastBestID = 0;
    
    // When at least one agents has learned to discern between Payload #1 & #2 with full accurracy,
    // this will be set to true.
    bool finishExecution = false;
    float tolerancePercentage = 0.85;
    uintT currentGen = 0;
    uintT bestRewardCounter = 0;
    uintT totalGens = nullAlice ? pConf->generations() : maxEveAdvantage;
    float maxRewardEve = envs[0]->ADVERSARY_TRAIN_REWARD * maxEveAdvantage + envs[0]->ADVERSARY_TRAIN_SMALL_REWARD * envs[0]->ADVERSARY_TRAIN_BITS * maxEveAdvantage;
    maxRewardEve *= tolerancePercentage;
    
    while (currentGen < totalGens && finishExecution == false) {
        printf("Adversary,%i,%i,%i\n", currentGen, totalGens, advs->config.unmGeneration);
        
        vector<thread> trds;
        
        for (int i = 0; i < numThreads; i++) {
            trds.push_back(thread(
                        advTrainingFunc,
                        i,
                        i * cellsPerThread,
                        i * cellsPerThread + cellsPerThread - 1,
                        &(rewardIDPair[i]),
                        advs,
                        &envs,
                        aliceCell));
        }
        
        for_each(trds.begin(), trds.end(), [](thread &t){
            t.join();
        });
        
        sort(rewardIDPair.rbegin(), rewardIDPair.rend(), sortByFst);
        float bestReward = rewardIDPair[0].first;
        
        if (bestReward >= maxRewardEve) {
            bestRewardCounter++;
        } else {
            bestRewardCounter = 0;
        }
        
        printf("Best,Eve,%0.2f\n", bestReward);
        
        UNMFunctions::spectrumDiversityEvolve(advs);
        UNMFunctions::checkSaveGen(pConf, advs, prefix);
        
        rewardIDPair[0].first = bestReward;
        rewardIDPair[0].second = lastBestID;
        
        // End execution, even if it has not reached the maximum generation number, when
        // reward is greater than expected and this value has been obtained continuously
        // for multiple generations.
        finishExecution = bestRewardCounter >= numGensMER;
        currentGen++;
    }
    
    if (pConf->saveToFile() && nullAlice) {
        UNMFunctions::checkSaveGen(pConf, advs, prefix, true);
    }
    
    return rewardIDPair[0].first;
}

void SymEncCPAFunctions::replicateBestAdversary(UnifiedNeuralModel *advs, vector<SymmetricEncryptionCPA *> *envs)
{
    pair<float, ushortT> paired = make_pair(0.0, 0);
    ushortT advsSize = advs->cells.size();
    advTrainingFunc(0, 0, advsSize - 1, &paired, advs, envs);
    auto &cells = advs->cells;
    UNMCell *bestCell = accumulate(cells.begin() + 1, cells.end(), cells[0], [](UNMCell *prev, UNMCell *next){
        return prev->cellFitness > next->cellFitness ? prev : next;
    });

    bestCell->cellFitness = 0;
    
    for (int i = 0; i < advsSize; i++) {
        cells[i]->cellStep = 0;
        cells[i]->netMod->nParams.networkID = i;
        cells[i]->netSt->module->nParams.networkID = i;
        cells[i]->netMod->nNeurons = bestCell->netMod->nNeurons;
        cells[i]->netMod->nConns = bestCell->netMod->nConns;
        cells[i]->netSt->nNSt = bestCell->netSt->nNSt;
        cells[i]->netSt->nCSt = bestCell->netSt->nCSt;
    }
}
