//
//  DoubleCartPole.hpp
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

#ifndef DoubleCartPole_hpp
#define DoubleCartPole_hpp

#include "ReinforcementEnvironment.hpp"
  	
#define FORCE_MAG 10.0
	
#define MUP 0.000002
#define FORCE_MAG 10.0
#define TAU 0.01		  //seconds between state updates 
#define GRAVITY -9.8
#define MASSCART 1.0
#define LENGTH_1 0.5		  
#define MASSPOLE_1 0.1
#define LENGTH_2 0.05
#define MASSPOLE_2 0.01
#define thirty_six_degrees 0.628329

class DoubleCartPole : public ReinforcementEnvironment
{
	public:

		DoubleCartPole(ushortT eID, const char *fileName);
		~DoubleCartPole();
		
		float state[6];
		bool  normalizedObservation;
		bool  normalizedAction;
		
		//Reinforcement Problem API
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
	
		//auxiliary functions
        void dcpIteration(float action, float *st, float *derivs);
        void rk4(float f, float y[], float dydx[], float yout[]);
        void copyToObservation(float *obs);
};

#endif // DoubleCartPole_hpp
