//
//  SymmetricEncryptionCPA.hpp
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

#ifndef SymmetricEncryptionCPA_hpp
#define SymmetricEncryptionCPA_hpp

#include "SymmetricEncryption.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"

// Reward for resolving effectively the adversary stage before executing CPA
const int ADVERSARY_TRAIN_REWARD = 50;
// Extra reward for each correct bit in the Eve response to CPA
const int ADVERSARY_TRAIN_SMALL_REWARD = 10;
// Number of correct bit Eve should have when training in CPA
const int ADVERSARY_TRAIN_BITS = 8;
// Punishment when adversary does not correctly assign a value before executing CPA
const int ADVERSARY_TRAIN_NEGATIVE_REWARD = -10;
// Max reward factor for obtaining a value higher in the NCC, in the range -1 < NCC < 1
const float NCCFACTOR = 25000;
const float DIFFFACTOR = 25000;


struct SymmetricEncryptionCPA: public SymmetricEncryption
{
    SymmetricEncryptionCPA(ushortT eID, const char *fileName);
    ~SymmetricEncryptionCPA();
    
    // "true" signals that the correct "payload" is the first part of the adversary input
    // "false" means it is on the second part. The third part is always used for the ciphertext
    bool payloadLocation;
    
    // This will signal to the environment that the adversary should execute first to
    // learn to distinguish between payloads. This flag only applies to CPA environment
    bool trainAdversary;
    // Signal that A&B should be pre-trained before placed after the adversary eve
    bool preTrainAB;
    
    float stepAdversary(ParameterType action);
    void updateWithKey(ParameterType *arr, int size, ParameterType *key, int keySize);
    ParameterVector adversaryPayload(const ParameterVector &ciphertext);
};

struct SymEncCPAFunctions
{
    static float symEncCPANetwork(PConfig *const pconf);
    static vector<SymmetricEncryptionCPA *> symEncVector(const ushortT numEnv, PConfig *const pConf);
    static pair<float, ushortT> trainCPAAdversary(PConfig *const pConf, UnifiedNeuralModel *adversary, vector<SymmetricEncryptionCPA *> &envs, UNMCell *aliceCell = NULL);
    static void replicateBestAdversary(UnifiedNeuralModel *advs, vector<SymmetricEncryptionCPA *> *envs);
    static float executeTestMode(PConfig *const pConf, vector<SymmetricEncryptionCPA *> &envs, UnifiedNeuralModel *alices, UnifiedNeuralModel *bobs, UnifiedNeuralModel *eves);
    static void clearFitness(UnifiedNeuralModel *unm);
};

#endif /* SymmetricEncryptionCPA_hpp */
