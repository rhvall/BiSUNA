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

#ifndef MULTIPLEXER
#define MULTIPLEXER

#include "Reinforcement_Environment.h"

class Multiplexer : public Reinforcement_Environment
{
	public:
		Multiplexer(ushortT eID, const char *fileName);
		~Multiplexer();
		
		int current_combination;
		int all_combinations;
		char **input_data;
		int address_bits;
		int data_bits;
		bool normalized_observation;
		bool normalized_action;

		void shuffle();
		ParameterType getCorrectOutput();
	
		//API
		void start(int &number_of_observation_vars, int &number_of_action_vars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
};

#endif
