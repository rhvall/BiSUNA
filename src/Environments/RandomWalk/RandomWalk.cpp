//
//  RandomWalk.cpp
//  BiSUNA
//
//  Created by R on 29/03/20.
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

#include "RandomWalk.hpp"
#include "RandomUtils.hpp"
#include <climits>
#include <fstream>

#define SQRT_2 1.4142135623730950488

static vector<float> rndWalk;

RandomWalk::RandomWalk(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    seed = (uintT)ini.GetInteger("RandomWalk", "Seed", RandomUtils::randomUInt(UINT_MAX));
    prevSeed = (uintT)ini.GetInteger("RandomWalk", "PreviousSeed", RandomUtils::randomUInt(UINT_MAX));
    iniDrift = (float)ini.GetReal("RandomWalk", "InitialDrift", 500);
    fluctuation = (float)ini.GetReal("RandomWalk", "Fluctuation", 1);
    rndMeanVal = (float)ini.GetReal("RandomWalk", "RandomMeanValue", 0);
    rndVariance = (float)ini.GetReal("RandomWalk", "RandomVariance", 100);
    maxSteps = (float)ini.GetReal("RandomWalk", "MaxSteps", 1000);
    capitalStart = (float)ini.GetReal("RandomWalk", "InitialCapital", 5000);
    storeFilePath = ini.Get("RandomWalk", "RandomWalkFile", "");
    capitalCurrent = capitalStart;
    stepCounter = 0;
    observationVars = 3;
    actionVars = 1;
    trial = 0;
    observation = (ParameterType *)malloc(observationVars * sizeof(ParameterType));
    RandomUtils::changeRandomSeed(seed);
}

RandomWalk::~RandomWalk()
{
    if (observation != NULL) {
        free(observation);
        observation = NULL;
    }
}

void RandomWalk::start(int &numObsVars, int &numActionVars)
{
    numObsVars = observationVars;
    numActionVars = actionVars;
}

float RandomWalk::step(ParameterType *action)
{
    if (action == NULL) {
        stepCounter = 0;
        capitalCurrent = capitalStart;
        
        if (transactions.size() < 1) {
            return 0;
        }
        
        RandomUtils::changeRandomSeed(seed);
        stepCounter = 0;
        capitalCurrent = capitalStart;
        transactions.clear();
        float gainLoss = capitalCurrent / capitalStart;
        return gainLoss != 1 ? gainLoss * 100 : -100;
//        return transactionsRewards();
    }
    
    float newPrice = rndWalk[stepCounter];
    float reward = 0;
    float didComplete = 0;
    bool lastOpr = false;
    float lastPrice = newPrice;
    float lastPosition = 0;
    size_t tranSize = transactions.size();
    bool positiveTrans = tranSize > 0;
    if (positiveTrans == true) {
        tie(lastOpr, lastPrice, lastPosition) = transactions[tranSize - 1];
    }
    
#ifdef CONTINUOUS_PARAM
    if (action[0] < 1) { // Buy intention
#else
    if (action[0] < 255) { // Buy intention
#endif
        if (lastOpr == true && positiveTrans) {
            didComplete = 0;
            reward = -50; // Bot can't buy more while it has already bought.
        }
        else {
            float position = capitalCurrent / newPrice;
            tuple<bool, float, float> trans = { true, newPrice, position};
            transactions.push_back(trans);
            didComplete = 1;
            // reward = 100;
        }
    }
#ifdef CONTINUOUS_PARAM
    else if (action[0] < -1 && positiveTrans) { // Sell intention
#else
    else if (action[0] > 32763 && positiveTrans) { // Sell intention
#endif
        if (lastOpr == false) {
            didComplete = 0;
            reward = -50; // Bot can't sell more while it has already sold.
        }
        else {
            float lastCapital = lastPosition * newPrice;
            float diff = lastCapital - capitalCurrent;
            capitalCurrent = lastCapital;
            tuple<bool, float, float> trans = { false, newPrice, diff };
            transactions.push_back(trans);
            didComplete = 1;
            reward = diff / 100;
        }
    }
    else { // Remain intention
        if (capitalStart > capitalCurrent) {
            reward = -1;
        }
        else if (capitalStart < capitalCurrent) {
            reward = capitalCurrent / capitalStart;
        }
        else {
            reward = -0.1; //(capitalCurrent / capitalStart) * 100;
        }
    }
    
    observation[0] = newPrice;
    observation[1] = capitalCurrent;
    observation[2] = didComplete; // Signal to the bot the operation could not be completed
    stepCounter++;
    
    if (capitalCurrent <= 0) {
        trial++;
        reward += -10000;
    }
    
    return reward;
}

float RandomWalk::transactionsReward()
{
//    return accumulate(transactions.begin(), transactions.end(), 0, [](float cap, auto tpl) {
//        if
//    });
    return 0;
}

vector<float> RandomWalk::rndWalkStep(uintT walkSize, float meanVal, float variance, float iniDrift, float fluctuation)
{
    vector<float> varWalk(walkSize, 0);
    float rndFloat = RandomUtils::randomNormal(meanVal, variance);
    float rndVal = iniDrift + rndFloat;
    varWalk[0] = rndVal;
    
    for (uintT i = 1; i < walkSize; i++) {
        rndFloat = RandomUtils::randomNormal(meanVal, variance);
        float prevVal = varWalk[i - 1];
        float nextVal = fluctuation * prevVal + rndFloat;
        nextVal = nextVal > 0.5 ? nextVal : 0.5;
        varWalk[i] = nextVal;
    }
    
    return varWalk;
}

void RandomWalk::print()
{
    printf("RandomWalk print\n");
}

float RandomWalk::restart()
{
    trial++;
    stepCounter = 0;
    capitalCurrent = capitalStart;
    transactions.clear();
    return 0;
}

bool RandomWalk::set(int feature)
{
    prevSeed = seed;
    seed = feature;
    RandomUtils::changeRandomSeed(seed);
    rndWalk = RandomWalk::rndWalkStep(maxSteps, rndMeanVal, rndVariance, iniDrift, fluctuation);
    
    if (storeFilePath.size() > 0) {
        storeToFile(storeFilePath, rndWalk, seed, trial);
    }
    
    return true;
}

bool RandomWalk::storeToFile(const string filePath, const vector<float> rndWalk, const uintT seed, const uintT trial)
{
    ofstream wf(filePath, ios::app);
    
    if (wf.is_open()) {
        size_t rndWalkSize = rndWalk.size();
        string idLine = "seed," + to_string(seed) + ",trial," + to_string(trial) + ",";
        idLine +=  "size," + to_string(rndWalkSize) + ",elems,";
        
        for (size_t i = 0; i < rndWalkSize; i++) {
            idLine += to_string(rndWalk[i]) + ",";
        }
        
        idLine.pop_back();
        idLine += "\n";
        wf << idLine;
        wf.close();
        return wf.good();
    }
    else {
        printf("Could not open file %s to store rndWalk\n", filePath.c_str());
    }
    
    return false;
}
