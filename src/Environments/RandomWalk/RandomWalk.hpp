//
//  RandomWalk.hpp
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

#ifndef RandomWalk_hpp
#define RandomWalk_hpp

#include "Environments/ReinforcementEnvironment.hpp"

class RandomWalk : public ReinforcementEnvironment
{
public:
    RandomWalk(ushortT eID, const char *fileName);
    ~RandomWalk();
 
    // Random walk variables
    float iniDrift;
    float fluctuation;
    float rndMeanVal;
    float rndVariance;
    
    // Environment variables
    uintT stepCounter;
    uintT seed;
    uintT prevSeed;
    string storeFilePath;
    
    // Trader variables
    float capitalStart; // The ammount of capital all bots start
    float capitalCurrent; // The ammount of capital a bot has at certain point
    // true - buy, false - sell
    vector<tuple<bool, float, float>> transactions; // Historic log of operations
    // With the first being buy/sell, the second the price, third the capital.
    
    void start(int &numObsVars, int& numActionVars);
    float step(ParameterType *action);
    float restart();
    void print();
    bool set(int feature);
    
    float transactionsReward();
    
    static vector<float> rndWalkStep(uintT walkSize, float meanVal, float variance, float iniDrift, float fluctuation);
    bool storeToFile(const string filePath, const vector<float> rndWalk, const uintT seed, const uintT trial);
};

#endif /* RandomWalk_hpp */
