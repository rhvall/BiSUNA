//
//  PConfig.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 18/7/19.
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

#ifndef PConfig_hpp
#define PConfig_hpp

#include "Parameters.hpp"
#include "INIReader.h"

enum PCGExecutionVal: ushortT {
    PCGThread,
    PCGOpenCL,
    PCGOpenCLFull
};

enum PCEnvironmentSupported: ushortT {
    PCEMountainCar,
    PCEDoubleCartPole,
    PCEFunctionApproximation,
    PCEGymEnv,
    PCEMultiplexer,
    PCESingleCartPole,
    PCESymmetricEncryption,
    PCESymmetricEncryptionCPA,
    PCEDecEncryptorCPA,
    PCERandomWalk,
    PCEExtraEncodeDecode,
    PCEnvironmentSupportedNumber
};

// Simple structure which keeps the reference to the INIReader
// object. An instance will be passed to other objects to read
// the configuration file.
struct PConfig
{
    PConfig(const char *fileName);
    ~PConfig();
    
    static PConfig *globalProgramConfiguration(const char *fileName = "BiSUNAConf.ini");
    static void discardConfiguration();
    
    const INIReader ini;
//  PCGeneral
    bool binaryNeurons();
//This constant helps to keep track of the ushortT indexing values if for some reason another type is
//used, it should be changed accordingly, for example, if it changes to "int", OutIndex should be
//considered to be "-1"
    ushortT outIndex();
    PCGExecutionVal exeType();
    uintT generations();
// PCPopulation
    ushortT initialMutations();
    ushortT stepMutations();
    ushortT populationSize();
    ushortT noveltyMapSize();
    array<float, 4> mutationProb();
    float neuroModulationProb();
    float neuroControlProb();
    float weightMutationProb();
// PCEnvironment
    ushortT episodesPerAgent();
    string bisunaFile();
    bool loadFromFile();
    bool saveToFile();
    ushortT saveEveryNGenerations();
    PCEnvironmentSupported environmentName();
    string environmentConf();
// PCOpenCL
    string kernelFolder();
    string kernelStateName();
    bool kernelStateUseLocalVars();
    string kernelEndEpisodeName();
    string kernelEvolveName();
    uintT deviceType();
    vector<string> oclFiles();
    bool oclProfiling();
    long computeUnits();
// PCThread
    ushortT threadNumber();
// PCContinuous
    float maxWeightC();
    float weightMutationChangeC();
    float excitationThresholdC();
    float remainingNeuronThresholdC();
// PCBinary
    ushortT maxWeightB();
    ushortT weightMutationChangeB();
    ushortT excitationThresholdB();
    ushortT remainingNeuronThresholdB();
    ushortT excitationThresholdBitsB();
    ushortT halfWeightB();
    ushortT midWeightB();
// PCDebugging
    bool enableDebugging();
    bool enableLogging();
    ushortT randomSeed();
    
    static vector<string> split(const string &s, char delimiter);
};

#endif /* PConfig_hpp */
