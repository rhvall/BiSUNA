//
//  Multiplexer.cpp
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

#ifndef Multiplexer_hpp
#define Multiplexer_hpp

#include "ReinforcementEnvironment.hpp"

class Multiplexer : public ReinforcementEnvironment
{
	public:
		Multiplexer(ushortT eID, const char *fileName);
		~Multiplexer();
		
		int currentCombination;
		int allCombinations;
		char **inputData;
		int addressBits;
		int dataBits;
		bool normalizedObservation;
		bool normalizedAction;

		void shuffle();
		ParameterType getCorrectOutput();
	
		//API
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
};

#endif // Multiplexer_hpp
