//
//  SymmetricEncryption.hpp
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

#ifndef SymmetricEncryption_hpp
#define SymmetricEncryption_hpp

#include "ReinforcementEnvironment.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"

#define STEP_REWARD_FACTOR 150
#define HALF_STEP_FACTOR (STEP_REWARD_FACTOR / 2)
#define MIN_STEP_FACTOR (STEP_REWARD_FACTOR / 10)

struct SymmetricEncryption: public ReinforcementEnvironment
{
    SymmetricEncryption(ushortT eID, const char *fileName);
    ~SymmetricEncryption();
    
    vector<ParameterVector> payloads;
    vector<ParameterVector> symEncKeys;
    uintT numStep = 0;
    uintT maxAdversarialAdvantage; // Up to how many generations the adversary can evolve
    
    // Number of generations it should remain in Max Expected Reward to finalize the environment
    uintT numGensMaxER;
    
    // Run environment in test mode, which will obtain the best A&B to then train an Eve population
    // against their results
    bool testMode;
    
    void start(int &numObsVars, int &numActionVars);
    float step(ParameterType *action);
    float step(ParameterVector action);
    float restart();
};

struct SymEncFunctions
{
    static float distanceInputOutput(ParameterVector input, ParameterVector output);
    static ParameterVector randomArray(const ushortT arrSize);
    static vector<ParameterVector> randomPayload(const uintT &vecSize, const uintT &payloadSize);
    static ParameterVector keyedPayload(const ParameterVector &symEncKey, const ParameterVector &data);
    static float symEncNetwork(PConfig *pconf);
    static bool sortByFst(pair<float, ushortT> a, pair<float, ushortT> b);
    template <typename T>
    static vector<T *> symEncVector(const ushortT numEnv, PConfig *pConf);
    static void arrangeRelatedModel(const vector<ushortT> &lst, UnifiedNeuralModel *relatedUNM);
    static double nccCalculation(vector<ParameterType> a, vector<ParameterType> b);
};

template <typename T>
vector<T *> SymEncFunctions::symEncVector(const ushortT numEnv, PConfig *pConf)
{
    string eCC = pConf->environmentConf();
    int obs = 0;
    int act = 0;
    vector<T *> envs;
    
    for (ushort i = 0; i < numEnv; i++) {
        T *env = new T(i, eCC.c_str());
        env->start(obs, act);
        envs.push_back(env);
    }
    
    return envs;
}

#endif /* SymmetricEncryption_hpp */
