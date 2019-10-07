//
//  PConfig.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 18/7/19.
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

#ifndef PConfig_hpp
#define PConfig_hpp

#include "Parameters.hpp"
#include "INIReader.h"

enum PCGExecutionVal: ushortT {
    PCGThread,
    PCGOpenCL
};

enum PCEnvironmentSupported: ushortT {
    PCEMountainCar,
    PCEDoubleCartPole,
    PCEFunctionApproximation,
    PCEGymEnv,
    PCEMultiplexer,
    PCESingleCartPole,
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
    ushortT generations();
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
    string kernelName();
    bool singleTask();
    uintT deviceType();
    vector<string> oclFiles();
    bool oclProfiling();
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
};

#endif /* PConfig_hpp */
