//
//  FunctionApproximation.hpp
//  BiSUNAOpenCL
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

#ifndef FunctionApproximation_hpp
#define FunctionApproximation_hpp

#include "ReinforcementEnvironment.hpp"

class FunctionApproximation : public ReinforcementEnvironment
{

	public:
		FunctionApproximation(ushortT eID, const char *fileName);
		~FunctionApproximation();
		
		uint problemIndex;
		uint solvedCounter;

        bool isSequential;
        bool isSupervised;
        bool isMutilpleRandom;
        uintT numberFunctionAppx;
        
    	int evaluationsPerEpisode;
		int evaluation;
		bool verbose;
	
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
        ParameterType obsValue(float val);
};

#endif
