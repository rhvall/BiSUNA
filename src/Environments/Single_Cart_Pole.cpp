//
//  Single_Cart_Pole.cpp
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

#include "Single_Cart_Pole.hpp"
#include "Discretizer.h"
#include "Parameters.hpp"
#include "RandomUtils.hpp"

//Single Pole Balancing
//#define MAX_SINGLE_POLE_STEPS 10000
#define MAX_SINGLE_POLE_STEPS 10000
#define RANDOM_START false

Single_Cart_Pole::Single_Cart_Pole(ushortT eID, const char *fileName):
    Reinforcement_Environment(eID, fileName)
{
	trial = -1;	//the first trial will be zero, because restart() is called making it increment
	MAX_STEPS = MAX_SINGLE_POLE_STEPS;
}

Single_Cart_Pole::~Single_Cart_Pole()
{
}

void Single_Cart_Pole::start(int &number_of_observation_vars, int &number_of_action_vars)
{
	number_of_observation_vars = 4;
	this->number_of_observation_vars = 4;
	observation = (ParameterType *)malloc(number_of_observation_vars * sizeof(ParameterType));

	number_of_action_vars = 2;
	this->number_of_action_vars = 2;

	restart();
}

//     cart_and_pole() was take directly from the pole simulator written
//     by Richard Sutton and Charles Anderson.
//     This simulator uses normalized, continous inputs instead of
//    discretizing the input space.
/*----------------------------------------------------------------------
  NOW cart_pole takes a continuous action from the spectrum (-10,10) and the
  current values of the four state variables and updates their values by estimating the state
 TAU seconds later.
  
  Originally, cart_pole took an action (0 or 1)
----------------------------------------------------------------------*/
void Single_Cart_Pole::cart_pole(float force, float *x, float *x_dot, float *theta, float *theta_dot)
{
  float xacc,thetaacc,costheta,sintheta,temp;
  
  const float GRAVITY = 9.81;
  const float MASSCART = 1.0;
  const float MASSPOLE = 0.1;
  const float TOTAL_MASS = (MASSPOLE + MASSCART);
  const float LENGTH = 0.5;	  /* actually half the pole's length */
  const float POLEMASS_LENGTH = (MASSPOLE * LENGTH);
  const float TAU = 0.02;	  /* seconds between state updates */
  const float FOURTHIRDS = 1.3333333333333;

  //force = (action>0)? FORCE_MAG : -FORCE_MAG;
  //check if the force exceeds the boundaries
  if (force > FORCE_MAG)
  {
      force = FORCE_MAG;
  }
  else if (force < -FORCE_MAG)
  {
      force = -FORCE_MAG;
  }

  costheta = cos(*theta);
  sintheta = sin(*theta);
  
  temp = (force + POLEMASS_LENGTH * *theta_dot * *theta_dot * sintheta)
    / TOTAL_MASS;
  
  thetaacc = (GRAVITY * sintheta - costheta * temp)
    / (LENGTH * (FOURTHIRDS - MASSPOLE * costheta * costheta
		 / TOTAL_MASS));
  
  xacc = temp - POLEMASS_LENGTH * thetaacc* costheta / TOTAL_MASS;
  
  /*** Update the four state variables, using Euler's method. ***/
  
  (*x) += TAU * (*x_dot);
  (*x_dot) += TAU * xacc;
  (*theta) += TAU * (*theta_dot);
  (*theta_dot) += TAU * thetaacc;
}

float Single_Cart_Pole::step(ParameterType *action)
{
	// initial reward
	if (action == NULL)
	{
		return 1;
		//return 1/(x*x + theta*theta + 0.001);
	}

   	const float TWELVE_DEGREES = 0.2094384;

	float force;
    float obs[4];
    
    ParameterType act0 = action[0];
    ParameterType act1 = action[1];
    
	if (act0 > act1)
	{
		force = -FORCE_MAG;
	}
	else
	{
		force = FORCE_MAG;
	}

	//--- Apply action to the simulated cart-pole ---
	cart_pole(force, &x, &x_dot, &theta, &theta_dot);
	
	//copy the state to the agents' observable variables
	obs[0] = x;
	//observation[0] = (x + 2.4) / 4.8;
	obs[1] = x_dot;
	//observation[1] = (x_dot + .75) / 1.5;
	obs[2] = theta;
	//observation[2] = (theta + TWELVE_DEGREES) / .41;
	obs[3] = theta_dot;
	//observation[3] = (theta_dot + 1.0) / 2.0;
    
    
#ifdef CONTINUOUS_PARAM
    observation[0] = obs[0];
    observation[1] = obs[1];
    observation[2] = obs[2];
    observation[3] = obs[3];
#else
    observation[0] = transformToPT(obs[0] * 100);
    observation[1] = transformToPT(obs[1] * 100);
    observation[2] = transformToPT(obs[2] * 100);
    observation[3] = transformToPT(obs[3] * 100);
#endif

	//--- Check for failure.  If so, return steps ---
	if (x < -2.4 || x > 2.4  || theta < -TWELVE_DEGREES ||	 theta > TWELVE_DEGREES)
	{
		restart();
		//return 1/(x*x + theta*theta + 0.001);
		return -10;
	}

	return 1;
	//return 1/(x*x + theta*theta + 0.001);
}

float Single_Cart_Pole::restart()
{
	trial++;
    x_dot = 0;
    theta_dot = 0;
    
	if (RANDOM_START) {
        x = RandomUtils::randomFloat(-1.4, 1.4);
		//x_dot = random->uniform(-1, 1);
		theta = RandomUtils::randomFloat(-0.1, 0.1);
		//theta_dot = random->uniform(-1.5, 1.5);
	}
	else {
		x = 0;
		theta = 0;
	}

#ifdef CONTINUOUS_PARAM
    //copy the state to the agents' observable variables
    observation[0] = x;
    //observation[0] = (x + 2.4) / 4.8;
    observation[1] = x_dot;
    //observation[1] = (x_dot + .75) / 1.5;
    observation[2] = theta;
    //observation[2] = (theta + TWELVE_DEGREES) / .41;
    observation[3] = theta_dot;
    //observation[3] = (theta_dot + 1.0) / 2.0;
#else
    observation[0] = transformToPT(x * 100);
    observation[1] = transformToPT(x_dot * 100);
    observation[2] = transformToPT(theta * 100);
    observation[3] = transformToPT(theta_dot * 100);
#endif
    
	return 1;
	//return 1/(x*x + theta*theta + 0.001);
}

void Single_Cart_Pole::print()
{
}
