//
//  MountainCar.h
//  BiSUNA
//
//  Created by R on 12/4/19.
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

#ifndef MOUNTAIN_CAR
#define MOUNTAIN_CAR

#include "Reinforcement_Environment.h"

class Mountain_Car : public Reinforcement_Environment
{

	public:
		Mountain_Car(ushortT eID, const char *fileName);
		~Mountain_Car();
		
		//double* observation;		
		//int number_of_observation_vars;
		//int number_of_action_vars;
		//int trial;

		// Global variables:
		float mcar_position, mcar_velocity;
		int last_change;
		bool normalized_observation;
		bool normalized_action;
	
		float mcar_min_position;
		float mcar_max_position;
		float mcar_max_velocity;            // the negative of this in the minimum velocity
		float mcar_goal_position;
			
        uintT mcarTrialsToChange;
        float modMaxVel;
        bool changesMaxVelocity;
        bool isNoisyCar;
        bool isContinuous;
		bool original_value;

		// Profiles
		//void MCarInit();                              // initialize car state
		//void MCarStep(int a);                         // update car state for given action
		//bool MCarAtGoal ();                           // is car at goal?
			
		void start(int &number_of_observation_vars, int& number_of_action_vars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
};

#endif
