//
//  DistributedCPA.cpp
//  BiSUNAOpenCL
//
//  Created by RH VT on 2/16/21.
//  Copyright © 2021 R. All rights reserved.
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

#include "DistributedCPA.hpp"
#include "Configuration/PConfig.hpp"
#include "RandomUtils.hpp"
#include "NN/NNetwork.hpp"
#include <thread>
#include "RandomUtils.hpp"
#include "NN/NNetworkExtra.hpp"

DistributedCPA::DistributedCPA(ushortT eID, const char *fileName): SymmetricEncryptionCPA(eID, fileName)
{
    
}

DistributedCPA::~DistributedCPA()
{
    
}

float DistributedCPAFunctions::distCPAAgent(PConfig *const pConf)
{
    // TODO!! An agentID function call should be added to pConf
    uint agentID = 0; // pConf->agentID();
    string eCC = pConf->environmentConf();
    const char *eCCID = eCC.c_str();
    DistributedCPA env(agentID, eCCID);

//    int numberObsVars = env.observationVars;
    int numberActionVars = env.actionVars;
//    int numGensMaxER = env.numGensMaxER;
    uintT maxEveAdvantage = env.maxAdversarialAdvantage;
//    bool preTrainAB = env.preTrainAB;

    string alicesPrefix = "aliceCPA" + eCC;
    string bobsPrefix = "bobCPA" + eCC;
    const char *evesPrefix = "evesCPA";

    // Encrypts
    UNMCell *alice = NULL;
    // Decrypts
    UNMCell *bob = NULL;
    // Adversarial. Its input has three elements: first action vars represent Payload #1, second = Payload #2 and
    // the third is the ciphertext. Its output is only a single 16bit element that counts all 8 bits from left
    // to right as the ciphertext comming from payload #1. All other remaining bits signal ciphertext was derived
    // from payload #1. For that reason, before comfronting Eve against A&B, it needs to first learn how to
    // differentiate between payloads.
    UnifiedNeuralModel eves = UNMFunctions::configureModel(numberActionVars * 3, 1, pConf, evesPrefix);

    alice->cellFitness = 0;
    bob->cellFitness = 0;
    SymEncCPAFunctions::clearFitness(&eves);

//    UNMCell *lastBestAlice = NULL;
//    bool evolveBob = false;
//    bool evolveAB = true; // Use this flag to signal that Alice or Bob should be evolved
//    bool finishExecution = false; // When maxExpectedReward and numGensMaxER match, this will be set to true.
//
//    // Flags to know if Alice or Bob have reached a maximum expected reward
//    bool didAliceMaxER = 0;
//    bool didBobMaxER = 0;
//
//    // In order to fill numGensMaxER requirement, we need to count how many generations the maxExpectedReward has
//    // been set to true.
//    uintT generationCounter = 0;
    float tolerancePercentage = 0.85;
//    float bestReward = 0;
    // Max reward is calculated by first considering the number of action vars multiplied by the max steps an environment
    // is allowed to take and a 150 multiplier to allow more visibility on different agents. It is split in half because
    // rewards for Alice and Bob are split in two. Also there is a bonus on the NCC values that could be assigned to agents
    // providing a better encryption/decyption cross-correlation. Lastly the DiffFactor adds a reward that will make sure
    // payloads are different across executions.
    float maxReward = (STEP_REWARD_FACTOR * numberActionVars * env.maxSteps) / 2 + NCCFACTOR + DIFFFACTOR; // PREV TEST DIFF LINE
//    float maxReward = 2 * DIFFFACTOR; // TEST DIFF LINE
    float maxRewardEve = ADVERSARY_TRAIN_REWARD * maxEveAdvantage + ADVERSARY_TRAIN_SMALL_REWARD * ADVERSARY_TRAIN_BITS * maxEveAdvantage;
    maxRewardEve *= tolerancePercentage;
//    const char *bobStr = "Bob-Decrypt";
//    const char *aliceStr = "Alice-Encrypt";
//    const char *eveStr = "Eve-Adversary";

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

    vector<SymmetricEncryptionCPA *> envs = {&env};
    if (env.trainAdversary == true) {
        SymEncCPAFunctions::trainCPAAdversary(pConf, &eves, envs);
        SymEncCPAFunctions::replicateBestAdversary(&eves, &envs);
    }
    
    printf("Execute Encryptor & decryptor (%i) agents vs adversarial population\n", agentID);

//            trds.push_back(thread(
//                        symEncTread,
//                        i,
//                        i * cellsPerThread,
//                        i * cellsPerThread + cellsPerThread - 1,
//                        &(rewardIDPair[i]),
//                        &alices,
//                        &bobs,
//                        preTrainAB == false ? &eves : NULL,
//                        &envs));
//        }
//
//        for_each(trds.begin(), trds.end(), [](thread &t){
//            t.join();
//        });
//
//        sort(rewardIDPair.rbegin(), rewardIDPair.rend(), SymEncFunctions::sortByFst);
//        bestReward = rewardIDPair[0].first;
//        ushortT bestRewardIdx = rewardIDPair[0].second;
//        printf("Best,A&B,%0.2f,%0.2f\n", bestReward, eves.cells[bestRewardIdx]->cellFitness);
//
//    UNMFunctions::checkSaveGen(pConf, &alices, alicesPrefix, true);
//    UNMFunctions::checkSaveGen(pConf, &bobs, bobsPrefix, true);
    UNMFunctions::checkSaveGen(pConf, &eves, evesPrefix, true);

    return 0; //rewardIDPair[0].first;
}

float DistributedCPAFunctions::distCPANetwork(PConfig *const pconf)
{
    return 0;
}
