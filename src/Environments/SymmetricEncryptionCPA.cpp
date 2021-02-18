//
//  SymmetricEncryptionCPA.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 5/12/19.
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

#include "SymmetricEncryptionCPA.hpp"
#include "Configuration/PConfig.hpp"
#include "RandomUtils.hpp"
#include "NN/NNetwork.hpp"
#include <thread>
#include "RandomUtils.hpp"
#include "NN/NNetworkExtra.hpp"


SymmetricEncryptionCPA::SymmetricEncryptionCPA(ushortT eID, const char *fileName):
    SymmetricEncryption(eID, fileName)
{
    trial = 0;
    maxSteps = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "MaxSteps", 500);
    int keySize = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "KeySize", 9);
    int payloadSize = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "PayloadSize", 9);
    
    if (keySize != payloadSize) {
        printf("Currently, only same size key - payload size is supported, change those values and try again.\n");
        exit(1);
    }
    
    maxAdversarialAdvantage = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "MaximumAdversarialAdvantage", 1000);
    
    numGensMaxER = (uintT)ini.GetInteger("SymmetricEncryptionCPA", "NumGensMaxExpectedReward", 1);
    
    trainAdversary = ini.GetBoolean("SymmetricEncryptionCPA", "AdversaryRequiresTraining", true);
    
    preTrainAB = ini.GetBoolean("SymmetricEncryptionCPA", "PreTrainAB", true);
    
    testMode = ini.GetBoolean("SymmetricEncryptionCPA", "TestMode", false);
    
    // observation var is multiplied by two to allocate space for the
    // key, which is feed to every step and replaced every restart
    observationVars = payloadSize;
    actionVars = payloadSize;
    
    // payload replaces the "observation" pointer with a vector
    payloads = SymEncFunctions::randomPayload(maxSteps, actionVars);
    symEncKeys = SymEncFunctions::randomPayload(maxSteps, actionVars);
    payloadLocation = false;
}

SymmetricEncryptionCPA::~SymmetricEncryptionCPA()
{
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
    
    numStep++;
    return result;
}

ParameterVector SymmetricEncryptionCPA::adversaryPayload(const ParameterVector &ciphertext)
{
    ParameterVector vec;
    float rndVal = RandomUtils::randomRangeFloat(-1, 1);
    ParameterVector randVector = SymEncFunctions::randomArray(actionVars);
    ParameterVector payload = payloads[numStep];
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

void SymEncCPAFunctions::clearFitness(UnifiedNeuralModel *unm)
{
    for (UNMCell *cell : unm->cells) {
        cell->cellFitness = 0;
    }
}

double nccReward(double nccAB, double nccAO, double nccBO)
{
    if (isnan(nccAB) || isnan(nccAO) || isnan(nccBO)) {
        return -10000;
    }
    
    double halfFactor = NCCFACTOR / 2;
    
    auto funcCheck = [&halfFactor](double ncc) {
        double factor = ncc > 0.15 ? -1 * halfFactor : halfFactor * (1 - ncc);
        return ncc * factor;
    };
    
//    float abRes = funcCheck(nccAB);
    double abRes = 0;
    double aoRes = funcCheck(abs(nccAO));
    double boRes = 0;
    
    nccBO = abs(nccBO);
    
    if (nccBO == 1) {
        boRes = halfFactor;
    }
    else if (nccBO <= 0.5) {
        boRes = -1 * halfFactor * (1 - nccBO);
    }
    else {
        boRes = halfFactor * (1 - nccBO);
    }
//    else if (nccBO < 0.05) {
//        boRes = 2000 * (1 - nccBO);
//    }
//    else if (nccBO < 0.10) {
//        boRes = 1500 * (1 - nccBO);
//    }
//    else if (nccBO < 0.25) {
//        boRes = 1000 * (1 - nccBO);
//    }
//    else if (nccBO < 0.5) {
//        boRes = 500 * (1 - nccBO);
//    }
//    else {
//        boRes = -2000;
//    }

    return abRes + aoRes + boRes;
}

float diffSetReward(set<ushortT> aSet, set<ushortT> bSet, set<ushortT> orSet, set<ushortT> paSet)
{
    float reward = 0;
    vector<ushortT> apSet;
    vector<ushortT> diffSet;
    vector<ushortT> interVec;
    size_t diffSetSize = diffSet.size();
    size_t aSetSize = aSet.size();
    size_t orSetSize = orSet.size();
    float aoDiff = abs((float)aSetSize - (float)orSetSize);
    float qFactor = DIFFFACTOR / 2;
    float negProportion = qFactor / (-100);
    
    set_intersection(aSet.begin(), aSet.end(), paSet.begin(), paSet.end(), back_inserter(apSet));
    set_intersection(aSet.begin(), aSet.end(), orSet.begin(), orSet.end(), back_inserter(diffSet));
    set_intersection(orSet.begin(), orSet.end(), bSet.begin(), bSet.end(), back_inserter(interVec));
    
    size_t apSetSize = apSet.size();
    size_t interVecSize = interVec.size();
    int diffBOSet = abs((int)orSetSize - (int)interVecSize);
    
    // Check that agents do not use any key in the output
    if (apSetSize != 0) {
        reward += negProportion * apSetSize;
    }
    
    // Initially, the encrypted set should have the same
    // size as the original set.
    if (diffSetSize == 0) {
        // This means the encrypted set had the same size as
        // the original set, which is expected when all output
        // is different in a "one-time-pad" scenario.
        if (aSetSize == orSetSize) {
            // This case means the original set did not have any related values
            // in the encrypted payload, which means that all initial numbers
            // were scrambled.
            reward += qFactor;
        }
        else {
            // This case means the original set had at least one value equal to
            // the encrypted payload, which should not be the case at all.
            reward += negProportion * aoDiff;
        }
    }
    else {
        // This case means that the encrypted payload had some
        // repetitions, which should not be the case and it is
        // reduced from the maximum possible reward.
        reward += negProportion * diffSet.size();
    }
    
    if (interVecSize == orSetSize) {
        reward += qFactor;
    }
    else {
        reward += negProportion * diffBOSet;
    }
    
    return reward;
}

void symEncTread(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward, UnifiedNeuralModel *alices,
            UnifiedNeuralModel *bobs, UnifiedNeuralModel *eves, vector<SymmetricEncryptionCPA *> *envs)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryptionCPA *env = envs->at(thrID);
    float reward = 0;
    float eveReward = 0;
    int stepCounter = 0;
    int i = env->trial;
    // NOTE!! During the first half of maxSteps, it will evolve eve, then
    // the other half it will evolve bob, which is outlined as halfMaxSteps
    int halfMaxSteps = env->maxSteps / 2;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    float bestSoFarEve = EXTREME_NEGATIVE_REWARD;
    double nccAB = 0;
    double nccAO = 0;
    double nccBO = 0;
    tuple<float, float, float> bestNCC = {0,0,0};
    ushortT bestIndex = current;
    ushortT bestIndexEve = current;
    ParameterVector aPayload; // Store Alice payloads
    ParameterVector bPayload; // Store Bob payloads
    ParameterVector orPayload; // Store Original payloads
    set<ushortT> orSet;
    set<ushortT> paSet;
    set<ushortT> aSet;
    set<ushortT> bSet;
    
    while (current <= end) {
        float accumReward = reward;
        float accumRewardEve = 0;
        UNMCell *aliceCell = alices->cells[current];
        UNMCell *bobCell = bobs->cells[current];
        UNMCell *eveCell = eves != NULL ? eves->cells[current] : NULL;
        
        while(env->trial == i && env->numStep < halfMaxSteps) {
            ParameterVector symEncKey = env->symEncKeys[env->numStep];
            ParameterVector payload = env->payloads[env->numStep];
            
            ParameterVector alicePayload = SymEncFunctions::keyedPayload(symEncKey, payload);
            ParameterVector actionAlice = UNMFunctions::step(reward, alicePayload, aliceCell);
            ParameterVector bobPayload = SymEncFunctions::keyedPayload(symEncKey, actionAlice);
            ParameterVector actionBob = UNMFunctions::step(reward, bobPayload, bobCell);
            
            orPayload.insert(orPayload.begin() + orPayload.size(), payload.begin(), payload.end());
            orSet.insert(payload.begin(), payload.end());
            paSet.insert(symEncKey.begin(), symEncKey.end());
            aPayload.insert(aPayload.begin() + aPayload.size(), actionAlice.begin(), actionAlice.end());
            aSet.insert(actionAlice.begin(), actionAlice.end());
            bPayload.insert(bPayload.begin() + bPayload.size(), actionBob.begin(), actionBob.end());
            bSet.insert(actionBob.begin(), actionBob.end());
            
            reward = env->step(actionBob);
            
            if (eveCell != NULL) {
                ParameterVector adversaryPayload = env->adversaryPayload(actionAlice);
                ParameterVector eveAction = UNMFunctions::step(eveReward, adversaryPayload, eveCell);
                eveReward = env->stepAdversary(eveAction[0]);
                reward -= eveReward;
                accumRewardEve += eveReward;
            }
            
            accumReward += reward;
//            printf("%i Obs: %.0f, Act: %.4f Reward: %0.2f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        reward = diffSetReward(aSet, bSet, orSet, paSet);
        
//        printf("Current: %i, A:%zu, B:%zu, Or:%zu, Diff:%zu - %zu\n", current, aSet.size(), bSet.size(), orSet.size(), orSet.size() - aSet.size(), orSet.size() - bSet.size()); // TEST DIFF LINE
        
        nccAB = SymEncFunctions::nccCalculation(aPayload, bPayload); // PREV TEST DIFF LINE
        nccAO = SymEncFunctions::nccCalculation(aPayload, orPayload); // PREV TEST DIFF LINE
        nccBO = SymEncFunctions::nccCalculation(bPayload, orPayload); // PREV TEST DIFF LINE
        
        aSet.clear();
        orSet.clear();
        bSet.clear();
        paSet.clear();
        aPayload.clear();
        bPayload.clear();
        orPayload.clear();
        
        reward += nccReward(nccAB, nccAO, nccBO); // PREV TEST DIFF LINE
        accumReward += reward; // PREV TEST DIFF LINE
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
            bestIndex = current;
            bestNCC = {nccAB, nccAO, nccBO};
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
        
        reward = 0;
        env->numStep = 0;
        stepCounter = 0;
        i = env->trial;
        current++;
    }

    float eveForAB = eves != NULL ? eves->cells[bestIndex]->cellFitness : 0;
    float abForEve = alices->cells[bestIndexEve]->cellFitness;
    env->restart();
    
    printf("Thread,%i,%i,%0.2f,%0.2f,%i,%0.2f,%0.2f,%0.2f,%0.2f,%0.2f\n", thrID, bestIndex, bestSoFar,
           eveForAB, bestIndexEve, bestSoFarEve, abForEve,
           // AB - AO - BO
           get<0>(bestNCC) * 100, get<1>(bestNCC) * 100, get<2>(bestNCC) * 100);
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
}

float SymEncCPAFunctions::symEncCPANetwork(PConfig * const pConf)
{
    ushortT population = pConf->populationSize();
    uintT generations = pConf->generations();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    
    vector<SymmetricEncryptionCPA *> envs = SymEncFunctions::symEncVector<SymmetricEncryptionCPA>(numThreads, pConf);
    
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
    
    clearFitness(&alices);
    clearFitness(&bobs);
    clearFitness(&eves);
    
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
    // Max reward is calculated by first considering the number of action vars multiplied by the max steps an environment
    // is allowed to take and a 150 multiplier to allow more visibility on different agents. It is split in half because
    // rewards for Alice and Bob are split in two. Also there is a bonus on the NCC values that could be assigned to agents
    // providing a better encryption/decyption cross-correlation. Lastly the DiffFactor adds a reward that will make sure
    // payloads are different across executions.
    float maxReward = (STEP_REWARD_FACTOR * numberActionVars * envs[0]->maxSteps) / 2 + NCCFACTOR + DIFFFACTOR; // PREV TEST DIFF LINE
//    float maxReward = 2 * DIFFFACTOR; // TEST DIFF LINE
    float maxRewardEve = ADVERSARY_TRAIN_REWARD * maxEveAdvantage + ADVERSARY_TRAIN_SMALL_REWARD * ADVERSARY_TRAIN_BITS * maxEveAdvantage;
    maxRewardEve *= tolerancePercentage;
    const char *bobStr = "Bob-Decrypt";
    const char *aliceStr = "Alice-Encrypt";
    const char *eveStr = "Eve-Adversary";
    
    // Explain how log was formatted to be easily transformed into CSV
    printf("Max Reward A&B: %0.2f, Eve: %0.2f\n", maxReward, maxRewardEve);
    printf("From Thread format table: TreadID, (Best) A&B Number, A&B Score, Eve Score, (Best) Eve Number, Eve Score, A&B Score,");
    printf("NCC-Alice Bob(%%), NCC-Alice Original(%%), NCC-Bob Original(%%)\n ");
    printf("From finished A&B: Best Score for that generation, competing Eve for the best A&B index\n");
    printf("From finished Eve: Best Score for that generation\n");
    printf("From Adversary: Current execution, Max eve advantage, Current generation\n");
    printf("From Execution: Current execution, Max generations, Alice gen, Bob gen, Eve gen, who executes\n");
    printf("From TestMode, it will first print the best A&B pair, then 'From Adversary' scores\n");
    printf("Note: NCC - Normalized Cross-Correlation, shown in Percentage\n");
    printf("----------------------------------------\n");
    
    if (envs[0]->trainAdversary == true) {
        trainCPAAdversary(pConf, &eves, envs);
        SymEncCPAFunctions::replicateBestAdversary(&eves, &envs);
    } else if (envs[0]->testMode == true) {
        return SymEncCPAFunctions::executeTestMode(pConf, envs, &alices, &bobs, &eves);
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
                            symEncTread,
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
            
            sort(rewardIDPair.rbegin(), rewardIDPair.rend(), SymEncFunctions::sortByFst);
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
            bestReward = trainCPAAdversary(pConf, &eves, envs, lastBestAlice).first;
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
    
    UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix, true);
    UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix, true);
    UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix, true);
    
    for_each(envs.begin(), envs.end(), [](ReinforcementEnvironment *env){
        delete env;
    });
    
    return rewardIDPair[0].first;
}

//////////////////////////////////////////////////////////////////////
//////////////////// Adversary Training //////////////////
//////////////////////////////////////////////////////////////////////

void advTrainingFunc(ushortT thrID, ushortT start, ushortT end, pair<float, ushortT> *bestReward,
                     UnifiedNeuralModel *adversary, vector<SymmetricEncryptionCPA *> *envs, UNMCell *aliceCell = NULL)
{
//    printf("Thread: % i, Start: %i, End: %i\n", thrID, start, end);
    SymmetricEncryptionCPA *env = envs->at(thrID);
    float reward = 0;
    int i = env->trial;
    ushortT current = start;
    float bestSoFar = EXTREME_NEGATIVE_REWARD;
    ushortT bestIndex = current;
    vector<ParameterType> envPayload;
    uintT maxEveAdvantage = env->maxAdversarialAdvantage;
    
    while (current <= end) {
        float accumReward = reward;
        UNMCell *cell = adversary->cells[current];
        
        while(env->trial == i && env->numStep < maxEveAdvantage) {
            ParameterVector symEncKey = env->symEncKeys[env->numStep];
            ParameterVector payload = env->payloads[env->numStep];
            
            if (aliceCell != NULL) {
                ParameterVector keyed = SymEncFunctions::keyedPayload(symEncKey, payload);
                envPayload = NNSFunction::process(keyed, aliceCell->netSt);
            }
            else {
                envPayload = payload;
            }
            
            ParameterVector payloadFull = env->adversaryPayload(envPayload);
            ParameterVector action = UNMFunctions::step(reward, payloadFull, cell);
            reward = env->stepAdversary(action[0]);
            accumReward += reward;
//            printf("%i Obs: %.0f, Act: %.4f Reward: %0.2f\n", stepCounter, env->observation[0], action[0], reward);
        }
        
        if (accumReward > bestSoFar) {
            bestSoFar = accumReward;
            bestIndex = current;
//            printf("Thread %i best update, agent: %i, Gen: %i, Fitness: %0.2f\n",
//                   thrID, current, agent.config.unmGeneration, bestSoFar);
        }
        
        UNMFunctions::endCellEpisode(reward, 1, cell);
        
        reward = 0;
        i = env->trial;
        current++;
    }

//    printf("Thread %i best: %0.2f\n", thrID, bestSoFar);
    bestReward->first = bestSoFar;
    bestReward->second = bestIndex;
    env->restart();
}

pair<float, ushortT> SymEncCPAFunctions::trainCPAAdversary(PConfig *const pConf, UnifiedNeuralModel *advs, vector<SymmetricEncryptionCPA *> &envs, UNMCell *aliceCell)
{
    bool nullAlice = aliceCell == NULL;
    ushortT population = advs->config.unmPopulation;
    ushortT numThreads = envs.size();
    ushortT cellsPerThread = population / numThreads;
    ushortT numGensMER = envs[0]->numGensMaxER;
    uintT maxEveAdvantage = envs[0]->maxAdversarialAdvantage;
    
    const char *prefix = nullAlice ? "evesCPA-PreTrain" : "evesCPA";
    
    vector<pair<float, ushortT>> rewardIDPair(numThreads);
    
    // When at least one agents has learned to discern between Payload #1 & #2 with full accurracy,
    // this will be set to true.
    bool finishExecution = false;
    float tolerancePercentage = 0.85;
    uintT currentGen = 0;
    uintT bestRewardCounter = 0;
    uintT totalGens = nullAlice ? pConf->generations() : maxEveAdvantage;
    float maxRewardEve = ADVERSARY_TRAIN_REWARD * maxEveAdvantage + ADVERSARY_TRAIN_SMALL_REWARD * ADVERSARY_TRAIN_BITS * maxEveAdvantage;
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
        
        sort(rewardIDPair.rbegin(), rewardIDPair.rend(), SymEncFunctions::sortByFst);
        float bestReward = rewardIDPair[0].first;
        
        if (bestReward >= maxRewardEve) {
            bestRewardCounter++;
        } else {
            bestRewardCounter = 0;
        }
        
        printf("Best,Eve,%0.2f\n", bestReward);
        
        UNMFunctions::spectrumDiversityEvolve(advs);
        UNMFunctions::checkSaveGen(pConf, advs, prefix);
        
        // End execution, even if it has not reached the maximum generation number, when
        // reward is greater than expected and this value has been obtained continuously
        // for multiple generations.
        finishExecution = bestRewardCounter >= numGensMER;
        currentGen++;
    }
    
    if (pConf->saveToFile() && nullAlice == true) {
        UNMFunctions::checkSaveGen(pConf, advs, prefix, true);
    }
    
    return rewardIDPair[0];
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

float SymEncCPAFunctions::executeTestMode(PConfig *const pConf, vector<SymmetricEncryptionCPA *> &envs, UnifiedNeuralModel *alices, UnifiedNeuralModel *bobs, UnifiedNeuralModel *eves)
{
    float bestReward = 0;
    ushortT population = pConf->populationSize();
    ushortT numThreads = pConf->threadNumber();
    ushortT cellsPerThread = population / numThreads;
    vector<pair<float, ushortT>> rewardIDPair(numThreads);
    printf("Test Mode\n");
    vector<thread> trds;
    UnifiedNeuralModel *mocModel = NULL;
    for (int i = 0; i < numThreads; i++) {
        trds.push_back(thread(
                    symEncTread,
                    i,
                    i * cellsPerThread,
                    i * cellsPerThread + cellsPerThread - 1,
                    &(rewardIDPair[i]),
                    alices,
                    bobs,
                    mocModel,
                    &envs));
    }
            
    for_each(trds.begin(), trds.end(), [](thread &t){
        t.join();
    });
            
    sort(rewardIDPair.rbegin(), rewardIDPair.rend(), SymEncFunctions::sortByFst);
    bestReward = rewardIDPair[0].first;
    ushortT bestRewardIdx = rewardIDPair[0].second;
    printf("Best,A&B,%0.2f,Index:%i\n", bestReward, bestRewardIdx);
    
    UNMCell *bestAlice = alices->cells[bestRewardIdx];
    pair<float, ushortT> evesResult = SymEncCPAFunctions::trainCPAAdversary(pConf, eves, envs, bestAlice);
    printf("LastEve,%0.2f,Index,%i\n", evesResult.first, evesResult.second);
    
    if (pConf->saveToFile()) {
        const char *evesPrefix = "testEvesCPA";
        UNMFunctions::checkSaveGen(pConf, eves, evesPrefix, true);
    }
    
    for_each(envs.begin(), envs.end(), [](ReinforcementEnvironment *env){
        delete env;
    });
    
    return 0;
}

//ParameterVector aPay;
//ParameterVector bPay;
//ParameterVector rPay;
//
//for (uintT i = 0; i < 150; i++) {
//    aPay.push_back((ushortT)(sin(i) * 100));
//    bPay.push_back(i * 200);
////        rPay.push_back(RandomUtils::randomPositive(OUT_INDEX));
//    rPay.push_back(i * 100);
//}
//
//double ncAB = SymEncFunctions::nccCalculation(aPay, bPay);
//double ncAR = SymEncFunctions::nccCalculation(aPay, rPay);
//double ncBR = SymEncFunctions::nccCalculation(bPay, rPay);
//
//printf("NCC: %f, %f, %f", ncAB, ncAR, ncBR);
//printf("\n");
//return 0;
