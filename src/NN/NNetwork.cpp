//
//  NNetwork.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 14/5/19.
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

#include "NNetwork.hpp"
#include <thread>
#include <ctime>
#include <algorithm>
#include <stdio.h>
#include <sstream>
#include <string>
#include "NNetworkModule.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"
#include "RandomUtils.hpp"
////////////// Environments
#include "Environments/Mountain_Car.hpp"
#include "Environments/Single_Cart_Pole.hpp"
#include "Environments/Double_Cart_Pole.hpp"
#include "Environments/Function_Approximation.hpp"
#include "Environments/GymEnv.hpp"
#include "Environments/Multiplexer.hpp"
////////////////////////////

#include "Configuration/PConfig.hpp"
#include "NN/NNetworkExtra.hpp"
///////////////////////////
#include "OCL/OpenCLUtils.hpp"
#include "OCL/OCLBridge.hpp"
#include "OCL/OCLContainer.hpp"

Reinforcement_Environment *createEnvFromStr(const ushortT &envID, const PCEnvironmentSupported &env, const string &envConf)
{
    const char *eCC = envConf.c_str();
    switch (env) {
        case PCEMountainCar: return new Mountain_Car(envID, eCC);
        case PCEDoubleCartPole: return new Double_Cart_Pole(envID, eCC); // TODO!! Check again, max SUNA 829, this was 125. Most likely Primers
        case PCEFunctionApproximation: return new Function_Approximation(envID, eCC); // TODO!! Check again, BiSUNA -11274, this -3868. SUNA -4047, this -16625
        
        // Each gym environment must be executed before this code is executed, matching the same
        // number of gyms with the number of threads. In python, it would execute something like:
        // python3 gym-uds-server.py 'MountainCar-v0' 'unix:///tmp/gym-uds-socket1'
        // where 1 means the thread id assgined to that environment.
        case PCEGymEnv: return new GymEnv(envID, eCC);
        case PCEMultiplexer: return new Multiplexer(envID, eCC); // SUNA: -755 (gen 182), this stuck at -832 (gen 278)
        case PCESingleCartPole: return new Single_Cart_Pole(envID, eCC); // TODO!! Check again, solved BiSUNA (10000), here was longer.
        default:
            printf("Environment %s not supported.\n", eCC);
            exit(1);
            break;
    }
}

void checkSaveGen(PConfig *pConf, const UnifiedNeuralModel *agent)
{
    ushortT everyNGens = pConf->saveEveryNGenerations();
    bool saveToFile = pConf->saveToFile();
    bool shouldSave = agent->config.unmGeneration % everyNGens == 0;
    if (saveToFile && shouldSave) {
        string bisunaName = pConf->bisunaFile();
        string timeStamped = NNExFunction::appendTimeStamp(bisunaName);
        NNExFunction::writeBiSUNAModel(agent, timeStamped.c_str());
    }
}

UnifiedNeuralModel configureModel(ushortT obserrvations, ushortT actions, PConfig *pConf)
{
    ushortT population = pConf->populationSize();
    
    UNMConfig conf = UNMConfig(obserrvations, actions, population, pConf->stepMutations());
    UnifiedNeuralModel agent = UnifiedNeuralModel(pConf->initialMutations(), conf);

    // This function will load a SUNA structured file into the first cell un the UNM
    if (pConf->loadFromFile()) {
        NNExFunction::readBiSUNAModel(pConf->bisunaFile().c_str(), &agent);
    }
    
    return agent;
}

vector<Reinforcement_Environment *> environmentVector(const ushortT numEnv, PConfig *pConf)
{
    const PCEnvironmentSupported envName = pConf->environmentName();
    const string envConf = pConf->environmentConf();
    int obs = 0;
    int act = 0;
    vector<Reinforcement_Environment *> envs;
    
    for (ushort i = 0; i < numEnv; i++) {
        Reinforcement_Environment *env = createEnvFromStr(i, envName, envConf);
        env->start(obs, act);
        envs.push_back(env);
    }
    
    return envs;
}

float NNFunction::mainBiSUNA(const char *config)
{
    PConfig::discardConfiguration();
    PConfig *pConf = PConfig::globalProgramConfiguration(config);
    printf("Config file: %s \n", config);
    
#ifdef DEBUG
    // This helps to keep consistency across execution and testing
    // setting the seed to an specific value.
    ushortT rndSeed = pConf->randomSeed();
    RandomUtils::changeRandomSeed(rndSeed);
#endif
    
    switch (pConf->exeType()) {
        case PCGThread:
            return mainThreadedNNetwork(pConf);
            break;
        case PCGOpenCL: {
            return mainOCLNNetwork(pConf);
            break;
        }
    }
}

float executeOCL(vector<Reinforcement_Environment *>env, const ushort &episodesPerAgent, UnifiedNeuralModel *unm, OCLContainer *cont, bool profiling, bool singleTask = false)
{
    vector<float> reward(env.size());
    transform(env.begin(), env.end(), reward.begin(), [](auto *e){ return e->step(NULL); } );
    vector<pair<int, int>> envCounter(env.size()); // first counts the current trial, the second counts the number of steps
    vector<int> i(env.size());
    transform(env.begin(), env.end(), envCounter.begin(), [](auto *e) -> pair<int,int> { return {e->trial, 0}; } );
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    vector<bool> stillExecuting(env.size(), true);
    ushort obsSize = unm->config.unmPopulation * unm->config.unmObs;
    ushort actSize = unm->config.unmActions;
    bool shouldContinue = false;
    ushortT counter = 0;
    double profTaskAccum = 0;
    double profOutputAccum = 0;
    ushortT workItems = singleTask ? 0 : unm->config.unmPopulation;
    
    function<void(double, double)> profCB = [&counter, &profTaskAccum, &profOutputAccum](double taskP, double outputP) {
        counter++;
        //        printf("Counter: %i, Task: %f, Output: %f\n", counter, taskP, outputP);
        profTaskAccum += taskP;
        profOutputAccum += outputP;
    };
    
    if (!profiling) {
        profCB = NULL;
    }
    
    do {
        ushort obsCounter = 0;
        ushort obsIdx = 0;
        
        for (ushortT i = 0; i < obsSize; i++) {
            ParameterType *ref = (ParameterType *)cont->inRef;
            ref[i] = env[obsIdx]->observation[obsCounter];
            obsCounter++;
            if (obsCounter >= env[obsIdx]->number_of_observation_vars) {
                obsIdx++;
                obsCounter = 0;
            }
        }
        
        vector<ParameterType> results = cont->exeOCL(workItems, profCB);
        
        for (ushortT i = 0; i < env.size(); i++) {
            auto base = results.begin() + i * actSize;
            vector<ParameterType>actVec(base, base + actSize);
            
            if (envCounter[i].first == env[i]->trial) {
                unm->cells[i]->cellFitness += reward[i];
                reward[i] = env[i]->step(actVec.data());
                envCounter[i].second++;
            }
        }
        
//        accumReward += reward;
        shouldContinue = false;
        for (ushort i = 0; i < env.size(); i++ && shouldContinue == false) {
            int trial = env[i]->trial;
            int maxStps = env[i]->MAX_STEPS;
            auto envCnt = envCounter[i];
            // Only when all environments have reached a max number of steps or the trial moved on, it is
            // when this flag will be set to false.
            shouldContinue = shouldContinue || (envCnt.first == trial && envCnt.second <= maxStps);
        }
        
//        printf("%i Obs: %.0f, Act: %.4f Reward: %f\n", stepCounter, env->observation[0], action[0], reward);
    } while(shouldContinue);

    bestSoFar = accumulate(unm->cells.begin(), unm->cells.end(), bestSoFar,
                           [](float acc, UNMCell *cell) {
                               return acc < cell->cellFitness ? cell->cellFitness : acc;
                           });
    printf("Best in generation: %i, Fitness: %f\n", unm->config.unmGeneration, bestSoFar);

    for (ushort i = 0; i < env.size(); i++) {
        UNMFunctions::endCellEpisode(reward[i], episodesPerAgent, unm->cells[i]);

//        int trial = env[i]->trial;
//        auto envCnt = envCounter[i];
//        if (trial == envCnt.first) {
            reward[i] = env[i]->restart();
//        }
//        else {
//            reward[i] = env[i]->step(NULL);
//        }
        
        envCounter[i].first = env[i]->trial;
        envCounter[i].second = 0;
    }
    
    if (counter != 0) {
        printf("Counter %i, TaskSum: %0.1f (%0.1f), OutSum: %0.1f (%0.1f)\n", counter, profTaskAccum, profTaskAccum / counter, profOutputAccum, profOutputAccum / counter);
    }
    
    //            printf("Thread %i best: %f\n", thrID, bestSoFar);
    return bestSoFar;
}

float NNFunction::mainOCLNNetwork(PConfig *pConf)
{
    ushortT population = pConf->populationSize();
    ushortT generations = pConf->generations();
    ushortT episodesPerAgent = pConf->episodesPerAgent();
    bool profiling = pConf->oclProfiling();
    cl_device_type oclDevice = pConf->deviceType();
    bool isSingleTask = pConf->singleTask();
    vector<Reinforcement_Environment *> envs = environmentVector(population, pConf);
    int numberObsVars = envs[0]->number_of_observation_vars;
    int numberActionVars = envs[0]->number_of_action_vars;
    
    UnifiedNeuralModel unm = configureModel(numberObsVars, numberActionVars, pConf);
    void *inputVec = NULL;
    posix_memalign(&inputVec, DMA_ALIGNMENT, numberObsVars * population * sizeof(ParameterType));
    string krnName = pConf->kernelName();
    OCLContainer *cont = new OCLContainer(inputVec, &unm, NULL, krnName.c_str(), oclDevice);

    while (unm.config.unmGeneration < generations) {
        printf("Generation: %i\n", unm.config.unmGeneration);
        executeOCL(envs, episodesPerAgent, &unm, cont, profiling, isSingleTask);
        UNMFunctions::spectrumDiversityEvolve(&unm);
        cont->reallocateUNM(&unm);
        checkSaveGen(pConf, &unm);
        printf("----------------------------------------\n");
    }
    
    if (pConf->saveToFile()) {
        NNExFunction::writeBiSUNAModel(&unm, pConf->bisunaFile().c_str());
    }
    
    for_each(envs.begin(), envs.end(), [](Reinforcement_Environment *env){
        delete env;
    });
    
    delete cont;
    free(inputVec);
    
    return 0;
}

float NNFunction::mainThreadedNNetwork(PConfig *pConf)
{
    ushortT population = pConf->populationSize();
    ushortT generations = pConf->generations();
    ushortT episodesPerAgent = pConf->episodesPerAgent();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    
    vector<Reinforcement_Environment *> envs = environmentVector(numThreads, pConf);
    int numberObsVars = envs[0]->number_of_observation_vars;
    int numberActionVars = envs[0]->number_of_action_vars;
    
    UnifiedNeuralModel agent = configureModel(numberObsVars, numberActionVars, pConf);
    
    vector<float> rewards(numThreads);
    
    auto trFunc = [&agent, &envs, &numberObsVars, &episodesPerAgent]
        (ushortT thrID, ushortT start, ushortT end, float *bestReward) {
//        printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
            Reinforcement_Environment *env = envs[thrID];
            float reward = env->step(NULL);
            int stepCounter = 0;
            int i = env->trial;
            ushortT current = start;
            float bestSoFar = EXTREME_NEGATIVE_REWARD;
            while (current <= end) {
                float accumReward = reward;
                UNMCell *cell = agent.cells[current];
                
                while(env->trial == i && stepCounter < env->MAX_STEPS) {
                    vector<ParameterType> obs(env->observation, env->observation + numberObsVars);
                    vector<ParameterType> action = UNMFunctions::step(reward, obs, cell);
                    reward = env->step(action.data()); 
                    accumReward += reward;
                    stepCounter++;
//                    printf("%i Obs: %.0f, Act: %.4f Reward: %f\n", stepCounter, env->observation[0], action[0], reward);
                }
                
                if (accumReward > bestSoFar) {
                    bestSoFar = accumReward;
//                    printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %f\n",
//                           thrID, current, agent.config.unmGeneration, bestSoFar);
                }
                
                UNMFunctions::endCellEpisode(reward, episodesPerAgent, cell);
                
                if (env->trial == i) {
                    reward = env->restart();
                }
                else {
                    reward = env->step(NULL);
                }
                
                stepCounter = 0;
                i = env->trial;
                current++;
            }
            
//            printf("Thread %i best: %f\n", thrID, bestSoFar);
            *bestReward = bestSoFar;
        };
    
    while (agent.config.unmGeneration < generations) {
        printf("Generation: %i\n", agent.config.unmGeneration);
        vector<thread> trds;
        for (int i = 0; i < numThreads; i++) {
            trds.push_back(thread(
                        trFunc,
                        i,
                        i * cellsPerThread,
                        i * cellsPerThread + cellsPerThread - 1,
                        &(rewards[i])
                        ));
        }
        
        for_each(trds.begin(), trds.end(), [](thread &t){
            t.join();
        });
        
        sort(rewards.rbegin(), rewards.rend());
        printf("From all threads, best was: %f\n", rewards[0]);
        
        checkSaveGen(pConf, &agent);
        
        UNMFunctions::spectrumDiversityEvolve(&agent);
        
        printf("----------------------------------------\n");
    }
    
    if (pConf->saveToFile()) {
        NNExFunction::writeBiSUNAModel(&agent, pConf->bisunaFile().c_str());
    }
    
    for_each(envs.begin(), envs.end(), [](Reinforcement_Environment *env){
        delete env;
    });
    
    return rewards[0];
}
