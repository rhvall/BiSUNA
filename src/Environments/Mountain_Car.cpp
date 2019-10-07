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

#include "Mountain_Car.hpp"
#include "Discretizer.h"
#include "RandomUtils.hpp"

Mountain_Car::Mountain_Car(ushortT eID, const char *fileName):
    Reinforcement_Environment(eID, fileName)
{
	trial = -1;
	last_change = -1;
	MAX_STEPS = (uintT)ini.GetInteger("MountainCar", "MaxSteps", 1000);
	mcar_min_position = ini.GetReal("MountainCar", "MinPosition", -1.2);
	mcar_max_position = ini.GetReal("MountainCar", "MaxPosition", 0.6);
	mcar_max_velocity = ini.GetReal("MountainCar", "MaxVelocity", 0.07);
    mcar_goal_position = ini.GetReal("MountainCar", "GoalPosition", 0.6);
    mcarTrialsToChange = (uintT) ini.GetInteger("MountainCar", "TrialsToChange", 1);
	modMaxVel = ini.GetReal("MountainCar", "ModifiedMaxVelocity", 0.04);
    changesMaxVelocity = ini.GetBoolean("MountainCar", "ModifiedMaxVelocity", false);
    isNoisyCar = ini.GetBoolean("MountainCar", "NoisyEnvironment", false);
    isContinuous = ini.GetBoolean("MountainCar", "ContinuousMountainCar", true);
	mcar_velocity = 0.0;
		
	original_value = true;
     	
	normalized_observation = false;
    normalized_action = false;
    observation = NULL;
}

Mountain_Car::~Mountain_Car()
{
    if (observation != NULL) {
        free(observation);
        observation = NULL;
    }
}

void Mountain_Car::start(int &number_of_observation_vars, int &number_of_action_vars)
{
    number_of_observation_vars = 2;
    this->number_of_observation_vars = 2;
    
	observation = (ParameterType *)malloc(number_of_observation_vars * sizeof(ParameterType));

#ifdef CONTINUOUS_MOUNTAIN_CAR
    number_of_action_vars = 1;
#else
	number_of_action_vars = 3;
#endif
    
	this->number_of_action_vars = number_of_action_vars;

	// Initialize state of Car
	restart();
}

float Mountain_Car::step(ParameterType *action)
{
	// initial reward
	if (action == NULL) {
		return -1;
		//return 1/(x*x + theta*theta + 0.001);             
	}

	float a = 0;
    
    if (isContinuous) {
    #ifdef CONTINUOUS_PARAM
        float act = action[0];
    #else
        float act = transformFromPT(action[0], 0, 1);
    #endif
        
        if (normalized_action) {
            //supposing that the action's range is [0,1]:
            a = (act - 0.5) * 2.0;
        }
        else {
            a = act;
        }
        
        if (a < -1.0) {
            a = -1.0;
        }
        
        if (a > 1.0) {
            a = 1.0;
        }

        // Take action a, update state of car
        mcar_velocity += a * 0.001 + cos(3.0 * mcar_position) * (-0.0025);
    }
    else {
        //Discrete Action Mountain Cart
    #ifdef CONTINUOUS_PARAM
        float act0 = action[0];
        float act1 = action[1];
        float act2 = action[2];
    #else
        float act0 = transformFromPT(action[0], 0, 1);
        float act1 = transformFromPT(action[1], 0, 1);
        float act2 = transformFromPT(action[2], 0, 1);
    #endif
        
        //For discrete actions, the range of the action is of no concern (i.e., normalized_action does not play a role)
        
        if (act0 > act1 && act0 > act2) {
            a = 0.0;
        }
        if (act1 > act0 && act1 > act2) {
            a = 1.0;
        }
        if (act2 > act0 && act2 > act1) {
            a = 2.0;
        }

        // Take action a, update state of car
        mcar_velocity += (a - 1.0) * 0.001 + cos(3.0 * mcar_position) * (-0.0025);
    }
	

	//limit the car's velocity
	if (mcar_velocity > mcar_max_velocity) {
		mcar_velocity = mcar_max_velocity;
	}
	if (mcar_velocity < -mcar_max_velocity) {
		mcar_velocity = -mcar_max_velocity;
	}
	
	mcar_position += mcar_velocity;
	
	//limit the car's position
	if (mcar_position > mcar_max_position) mcar_position = mcar_max_position;
	if (mcar_position < mcar_min_position) mcar_position = mcar_min_position;

	//stop the car, if it hits the min_position
	if (mcar_position == mcar_min_position && mcar_velocity < 0) mcar_velocity = 0;
    
    float obs[number_of_observation_vars];

    if (isNoisyCar) {
        float gauss0 = RandomUtils::randomNormal(0, 0.06);
        float gauss1 = RandomUtils::randomNormal(0, 0.009);
    
        if (normalized_observation) {
            //the maximum and minimum position differ, therefore I use the absolute biggest value which is the minimum
            //notice that the noise is ignored in the normalization, therefore, it may go beyond the expected range [-1,1]
            obs[0] = (mcar_position + gauss0) / fabs(mcar_min_position);
            obs[1] = (mcar_velocity + gauss1) / mcar_max_velocity;
        }
        else {
            obs[0] = mcar_position + gauss0;
            obs[1] = mcar_velocity + gauss1;
        }
    }
    else {
        if (normalized_observation) {
            //the maximum and minimum position differ, therefore I use the absolute biggest value which is the minimum
            obs[0] = mcar_position / fabs(mcar_min_position);
            obs[1] = mcar_velocity / mcar_max_velocity;
        }
        else {
            obs[0] = mcar_position;
            obs[1] = mcar_velocity;
        }
    }

	// Is Car within goal region?
	if (mcar_position >= mcar_goal_position) {
		restart();
		return 0;
	}
    
#ifdef CONTINUOUS_PARAM
    observation[0] = obs[0];
    observation[1] = obs[1];
#else
    observation[0] = transformToPT(obs[0]);
    observation[1] = transformToPT(obs[1]);
#endif

	return -1;
}

void Mountain_Car::print()
{
	printf("position %f velocity %f\n",mcar_position, mcar_velocity);
}

float Mountain_Car::restart()
{
	trial++;

    if (changesMaxVelocity) {
        if (trial % mcarTrialsToChange == 0 && trial != last_change)
        {
            last_change = trial;

            if (original_value == true) {
                mcar_max_velocity = modMaxVel;
                original_value = false;
                //printf("changing to modified\n");
            }
            else {
                mcar_max_velocity = ini.GetReal("MountainCar", "MaxVelocity", 0.07);
                original_value = true;
                //printf("changing to original\n");
            }
        }
    }
	//printf("%d %f\n",trial, mcar_max_velocity);	

	// Initialize state of Car
	mcar_position = -0.5;
	mcar_velocity = 0.0;
    
    float obs[number_of_observation_vars];
	
    if (isNoisyCar) {
        float gauss0 = RandomUtils::randomNormal(0, 0.06);
        float gauss1 = RandomUtils::randomNormal(0, 0.009);
        
        if (normalized_observation) {
            //the maximum and minimum position differ, therefore I use the absolute biggest value which is the minimum
            //notice that the noise is ignored in the normalization, therefore, it may go beyond the expected range [-1,1]
            obs[0] = (mcar_position + gauss0) / fabs(mcar_min_position);
            obs[1] = (mcar_velocity + gauss1) / mcar_max_velocity;
        }
        else
        {
            obs[0] = mcar_position + gauss0;
            obs[1] = mcar_velocity + gauss1;
        }
    }
    else {
        if (normalized_observation) {
            //the maximum and minimum position differ, therefore I use the absolute biggest value which is the minimum
            obs[0] = mcar_position / fabs(mcar_min_position);
            obs[1] = mcar_velocity / mcar_max_velocity;
        }
        else {
            obs[0] = mcar_position;
            obs[1] = mcar_velocity;
            //observation[2] = mcar_max_velocity;
        }
    }
    
#ifdef CONTINUOUS_PARAM
    observation[0] = obs[0];
    observation[1] = obs[1];
#else
    observation[0] = transformToPT(obs[0]);
    observation[1] = transformToPT(obs[1]);
#endif

	return -1;
}

bool Mountain_Car::set(int feature)
{
	switch(feature)
	{
		case NORMALIZED_OBSERVATION: {
			normalized_observation = true;
			return true;
		}
		break;
		case NORMALIZED_ACTION: {
			normalized_action = true;
			return true;
		}
		break;
		default: {
			return false;
		}
	}
}
