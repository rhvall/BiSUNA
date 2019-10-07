//
//  Double_Cart_Pole.hpp
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

#ifndef DOUBLE_CART_POLE_H
#define DOUBLE_CART_POLE_H

#include "Reinforcement_Environment.h"
  	
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

class Double_Cart_Pole : public Reinforcement_Environment
{
	public:

		Double_Cart_Pole(ushortT eID, const char *fileName);
		~Double_Cart_Pole();
		
		//All Reinforcement Problems have the observartion variable, although it is not declared here!
		//double* observation;		
		//int number_of_observation_vars;
		//int number_of_action_vars;
		//int trial;
		
		float state[6];
		bool  normalized_observation;
		bool  normalized_action;
		
		//Reinforcement Problem API
		void start(int &number_of_observation_vars, int &number_of_action_vars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
	
		//auxiliary functions
        void double_cart_pole(float action, float *st, float *derivs);
        void rk4(float f, float y[], float dydx[], float yout[]);
        void copyToObservation(float *obs);
};

#endif
