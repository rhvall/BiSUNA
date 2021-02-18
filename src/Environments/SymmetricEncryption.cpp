//
//  SymmetricEncryption.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 27/10/19.
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
    trial = 0;
    maxSteps = (uintT)ini.GetInteger("SymmetricEncryption", "MaxSteps", 500);
    int keySize = (uintT)ini.GetInteger("SymmetricEncryption", "KeySize", 9);
    int payloadSize = (uintT)ini.GetInteger("SymmetricEncryption", "PayloadSize", 9);
    
    if (keySize != payloadSize) {
        printf("Currently, only same size key - payload size is supported, change those values and try again.\n");
        exit(1);
    }
    
    maxAdversarialAdvantage = (uintT)ini.GetInteger("SymmetricEncryption", "MaximumAdversarialAdvantage", 1000);
    
    numGensMaxER = (uintT)ini.GetInteger("SymmetricEncryption", "NumGensMaxExpectedReward", 1);
    
    testMode = ini.GetBoolean("SymmetricEncryption", "TestMode", false);
    
    // observation var is multiplied by two to allocate space for the
    // key, which is feed to every step and replaced every restart
    observationVars = payloadSize;
    actionVars = payloadSize;
    
    // payload replaces the "observation" pointer with a vector
    payloads = SymEncFunctions::randomPayload(maxSteps, actionVars);
    symEncKeys = SymEncFunctions::randomPayload(maxSteps, actionVars);
}

SymmetricEncryption::~SymmetricEncryption()
{
}

void SymmetricEncryption::start(int &numObsVars, int &numActionVars)
{
    numObsVars = observationVars;
    numActionVars = actionVars;
}

float SymmetricEncryption::step(ParameterType *action)
{
    printf("This function is not used in this environment, use the vectorized version instead");
    return 0;
}

float SymmetricEncryption::step(ParameterVector action)
{
    float reward = SymEncFunctions::distanceInputOutput(payloads[numStep], action);
    numStep++;
    return reward;
}

float SymmetricEncryption::restart()
{
    trial++;
    numStep = 0;
    
    if (trial % 5) {
        payloads = SymEncFunctions::randomPayload(maxSteps, actionVars);
    }
    
    symEncKeys = SymEncFunctions::randomPayload(maxSteps, actionVars);
    return 0;
}

//////////////////////////////////////////////////////////////////////
/// SymEncFunctions
//////////////////////////////////////////////////////////////////////

ParameterVector SymEncFunctions::randomArray(const ushortT arrSize)
{
    ParameterVector vec(arrSize);
    for_each(vec.begin(), vec.end(), [](ParameterType &val) {
#ifdef CONTINUOUS_PARAM
        val = RandomUtils::randomNormal(0, 10);
#else
        val = RandomUtils::randomPositive(65535);
#endif
    });
    
    return vec;
}

vector<ParameterVector> SymEncFunctions::randomPayload(const uintT &vecSize, const uintT &payloadSize)
{
    vector<ParameterVector> res(vecSize);
    for_each(res.begin(), res.end(), [&payloadSize](ParameterVector &p){
        p = SymEncFunctions::randomArray(payloadSize);
    });
    return res;
}

float SymEncFunctions::distanceInputOutput(ParameterVector input, ParameterVector output)
{
    int result = 0;
    
    if (input == output) {
        result = STEP_REWARD_FACTOR * (int)input.size();
        return (float)result;
    }
    
    ParameterVector c;
    transform(input.begin(), input.end(), output.begin(), std::back_inserter(c),
              [](const auto& aa, const auto& bb) {
#ifdef CONTINUOUS_PARAM
        return powf((aa - bb), 2); // Distance function sqrt((a1 - b1) ^ 2 + (a2 - b2) ^ 2)
#else
        return (aa ^ bb);
#endif
    });
    
    result = accumulate(c.begin(), c.end(), 0,
                        [](ParameterType accum, ParameterType val){
        if (val == 0) {
            return accum + HALF_STEP_FACTOR;
        }
        else {
#ifdef CONTINUOUS_PARAM
            return accum - sqrtf(val);
#else
            return accum - (__builtin_popcount(val) * MIN_STEP_FACTOR);
#endif
        }
    });
    
    return (float)result;
}

ParameterVector SymEncFunctions::keyedPayload(const ParameterVector &symEncKey, const ParameterVector &data)
{
    size_t dtaSize = data.size();
    ParameterVector vec(dtaSize);
    for (uintT i = 0; i < dtaSize; i++) {
#ifdef CONTINUOUS_PARAM
        ushortT k = (ushortT)round(symEncKey[i]);
        ushortT d = (ushortT)round(data[i]);
        vec[i] = static_cast<float>(k ^ d);
#else
        vec[i] = symEncKey[i] ^ data[i];
#endif
    }
    
    return vec;
}

void symEncFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward, bool bobOrEve,
            UnifiedNeuralModel *alices, UnifiedNeuralModel *companion, vector<SymmetricEncryption *> *envs)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryption *env = envs->at(thrID);
    float reward = env->restart();
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
        
        while(env->trial == i && env->numStep < halfMaxSteps) {
            ParameterVector symEncKey = env->symEncKeys[env->numStep];
            ParameterVector payload = env->payloads[env->numStep];
            
            ParameterVector alicePayload = SymEncFunctions::keyedPayload(symEncKey, payload);
            ParameterVector envAction;
            
            if (bobOrEve == true) { // When true, it's Bob's time
                ParameterVector actionAlice = UNMFunctions::step(reward, alicePayload, aliceCell);
                ParameterVector bobPayload = SymEncFunctions::keyedPayload(symEncKey, actionAlice);
                envAction = UNMFunctions::step(reward, bobPayload, companionCell);
            }
            else {
                ParameterVector actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
                for (uintT i = 1; i < 10; i++) {
//                    printf("Action: %i, %i, %i, %i, %i\n", actionAlice[0], actionAlice[1], actionAlice[2], actionAlice[3], actionAlice[4]);
                    ParameterVector rndVec = SymEncFunctions::randomArray(5);
                    alicePayload = SymEncFunctions::keyedPayload(rndVec, actionAlice);
                    actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
                }
                envAction = UNMFunctions::step(reward, actionAlice, companionCell);
            }
            
            reward = env->step(envAction);
            accumReward += reward;
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
        
        reward = 0;
        env->numStep = 0;
        i = env->trial;
        current++;
    }

    string str = bobOrEve ? "A&B" : "Eve";
    printf("Thread,%s,%i,%i,%0.2f\n", str.c_str(), thrID, bestIndex, bestSoFar);
    
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
}

float SymEncFunctions::symEncNetwork(PConfig *pConf)
{
    ushortT population = pConf->populationSize();
    uintT generations = pConf->generations();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    
    vector<SymmetricEncryption *> envs = SymEncFunctions::symEncVector<SymmetricEncryption>(numThreads, pConf);
    
    uintT maxEveAdvantage = envs[0]->maxAdversarialAdvantage;
    int numberObsVars = envs[0]->observationVars;
    int numberActionVars = envs[0]->actionVars;
    float maxExpectedReward = 100 * numberActionVars * envs[0]->maxSteps / 2;
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
    bool enableTestMode = envs[0]->testMode;
    bool executeAdversary = enableTestMode;
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
    
    // Explain how log was formatted to be easily transformed into CSV
    printf("Max Reward A&B: %0.2f\n", maxExpectedReward); //, Eve: %0.2f\n", maxReward, maxRewardEve);
    printf("From Thread format table: TreadID, (Best) A&B Number, A&B Score\n");
    printf("From Execution: Current execution, Max generations, Alice gen, Bob gen, Eve gen, who executes, Generation Adversarial, Max Adv Advantage\n");
    if (enableTestMode) {
        printf("Test Mode enabled\n");
        evolveAB = false;
    }
    printf("----------------------------------------\n");
    
    while (currentGen < totalGens && finishExecution == false) {
        const char *toEvolve = evolveBob ? bobStr : aliceStr;
        const char *whoPlays = executeAdversary ? eveStr : toEvolve;
        
        printf("Execution,%i,%i,%i,%i,%i,%s,%i,%i\n",
           currentGen, totalGens, alices.config.unmGeneration, bobs.config.unmGeneration, eves.config.unmGeneration, whoPlays, genAdversarial, maxEveAdvantage);
        
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
        
        sort(rewardIDPair.rbegin(), rewardIDPair.rend(), SymEncFunctions::sortByFst);
        float bestReward = rewardIDPair[0].first;
        ushort bestIndex = rewardIDPair[0].second;
        printf("Best,%s,%0.2f,%i\n", whoPlays, bestReward, bestIndex);
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
            
            if (didEveDecrypt == true && enableTestMode == false) {
                UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix, true);
                
                // In case Eve was able to decrypt A&B ciphertext, they are punished and forced
                // to continue evolving.
                alices.cells[lastBestID]->cellFitness -= 1000;
                bobs.cells[lastBestID]->cellFitness -= 1000;
                didAliceMaxER = false; 
                didBobMaxER = false;
                didEveDecrypt = false;
                evolveAB = !enableTestMode;
                executeAdversary = enableTestMode;
                generationCounter = 0;
                genAdversarial = 0;
            }
        }
        
        if (maxEveAdvantage != 0 && genAdversarial > maxEveAdvantage) {
            genAdversarial = 0;
            executeAdversary = enableTestMode;
            evolveBob = false;
            evolveAB = generationCounter < numGensMaxER && !enableTestMode;
            printf("****************************************\n");
        }
        
        if (evolveAB == false && executeAdversary == false) {
            // It could happen that sometimes, when A&B are tested again, their best reward is not
            // the max ER, then it is neccessary to continue evolving.
            if (bestReward < maxExpectedReward) {
                generationCounter = 0;
                evolveAB = !enableTestMode;
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
                evolveAB = !enableTestMode;
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
        
        enableTestMode ? currentGen++ : 0;
    }
    
    UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix, true);
    UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix, true);
    UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix, true);

    for_each(envs.begin(), envs.end(), [](ReinforcementEnvironment *env){
        delete env;
    });
    
    return rewardIDPair[0].first;
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

bool SymEncFunctions::sortByFst(pair<float, ushortT> a, pair<float, ushortT> b)
{
    return a.first < b.first;
}

// normalized cross-correlation
// https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0203434
// ncc = sum(a(n) * b(n)) / (sqrt(sum(a(n)^2)) * sqrt(sum(b(n)^2)))
// -1 <= ncc <= 1
double SymEncFunctions::nccCalculation(vector<ParameterType> a, vector<ParameterType> b)
{
    size_t aSize = a.size();
    size_t bSize = b.size();
    
    if (aSize != bSize) {
        printf("nccCalculation function requires that both vectors have the same size\n");
        return -1;
    }
    
    double sumRes = 1;
    double aMean = 0;
    double bMean = 0;
    double sumC = 0;
    double sqSumA = 0;
    double sqSumB = 0;
    uintT vecSize = 150;
    uintT split = (uintT)(aSize / vecSize);
    uintT startIdx = 0;
    uintT endIdx = 0;
    bool lessThanVec = aSize < vecSize;
    if (lessThanVec == true) {
        split = 1;
        vecSize = (uintT)aSize;
    }
    
    for (uint j = 0; j < split; j++) {
        startIdx = j * vecSize;
        endIdx = startIdx + vecSize;
        
        if (endIdx > aSize) {
            endIdx = (uintT)aSize;
        }
        
        for (uintT i = startIdx; i < endIdx; i++) {
            aMean += a[i] / vecSize;
            bMean += b[i] / vecSize;
        }

        for (uintT i = startIdx; i < endIdx; i++) {
            sumC += (a[i] - aMean) * (b[i] - bMean);
            sqSumA += pow(a[i] - aMean, 2.0);
            sqSumB += pow(b[i] - bMean, 2.0);
        }

        double rr = (sumC / sqrt(sqSumA * sqSumB));
        sumRes *= rr;
    }
    
    double res = lessThanVec ? sumRes / split : sumRes;
    return res;
}
