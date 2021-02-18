//
//  SingleCartPole.cpp
//  BiSUNAOpenCL
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

#include "SingleCartPole.hpp"
#include "Discretizer.h"
#include "Parameters.hpp"
#include "RandomUtils.hpp"

//Single Pole Balancing
//#define MAX_SINGLE_POLE_STEPS 10000
#define MAX_SINGLE_POLE_STEPS 10000
#define RANDOM_START false

SingleCartPole::SingleCartPole(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
	trial = -1;	//the first trial will be zero, because restart() is called making it increment
	maxSteps = MAX_SINGLE_POLE_STEPS;
}

SingleCartPole::~SingleCartPole()
{
}

void SingleCartPole::start(int &numObsVars, int &numActionVars)
{
	numObsVars = 4;
	this->observationVars = 4;
	observation = (ParameterType *)malloc(numObsVars * sizeof(ParameterType));

	numActionVars = 2;
	this->actionVars = 2;

	restart();
}

//     cart_and_pole() was take directly from the pole simulator written
//     by Richard Sutton and Charles Anderson.
//     This simulator uses normalized, CONTINUOUS inputs instead of
//    discretizing the input space.
/*----------------------------------------------------------------------
  NOW cartPole takes a continuous action from the spectrum (-10,10) and the
  current values of the four state variables and updates their values by estimating the state
 TAU seconds later.
  
  Originally, cartPole took an action (0 or 1)
----------------------------------------------------------------------*/
void SingleCartPole::cartPole(float force, float *x, float *xDot, float *theta, float *thetaDot)
{
  float xacc, thetaacc, costheta, sintheta, temp;
  
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
  
  temp = (force + POLEMASS_LENGTH * *thetaDot * *thetaDot * sintheta)
    / TOTAL_MASS;
  
  thetaacc = (GRAVITY * sintheta - costheta * temp)
    / (LENGTH * (FOURTHIRDS - MASSPOLE * costheta * costheta
		 / TOTAL_MASS));
  
  xacc = temp - POLEMASS_LENGTH * thetaacc* costheta / TOTAL_MASS;
  
  /*** Update the four state variables, using Euler's method. ***/
  
  (*x) += TAU * (*xDot);
  (*xDot) += TAU * xacc;
  (*theta) += TAU * (*thetaDot);
  (*thetaDot) += TAU * thetaacc;
}

float SingleCartPole::step(ParameterType *action)
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
	cartPole(force, &x, &xDot, &theta, &thetaDot);
	
	//copy the state to the agents' observable variables
	obs[0] = x;
	//observation[0] = (x + 2.4) / 4.8;
	obs[1] = xDot;
	//observation[1] = (xDot + .75) / 1.5;
	obs[2] = theta;
	//observation[2] = (theta + TWELVE_DEGREES) / .41;
	obs[3] = thetaDot;
	//observation[3] = (thetaDot + 1.0) / 2.0;
    
    
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

float SingleCartPole::restart()
{
	trial++;
    xDot = 0;
    thetaDot = 0;
    
	if (RANDOM_START) {
        x = RandomUtils::randomRangeFloat(-1.4, 1.4);
		//xDot = random->uniform(-1, 1);
		theta = RandomUtils::randomRangeFloat(-0.1, 0.1);
		//thetaDot = random->uniform(-1.5, 1.5);
	}
	else {
		x = 0;
		theta = 0;
	}

#ifdef CONTINUOUS_PARAM
    //copy the state to the agents' observable variables
    observation[0] = x;
    //observation[0] = (x + 2.4) / 4.8;
    observation[1] = xDot;
    //observation[1] = (xDot + .75) / 1.5;
    observation[2] = theta;
    //observation[2] = (theta + TWELVE_DEGREES) / .41;
    observation[3] = thetaDot;
    //observation[3] = (thetaDot + 1.0) / 2.0;
#else
    observation[0] = transformToPT(x * 100);
    observation[1] = transformToPT(xDot * 100);
    observation[2] = transformToPT(theta * 100);
    observation[3] = transformToPT(thetaDot * 100);
#endif
    
	return 1;
	//return 1/(x*x + theta*theta + 0.001);
}

void SingleCartPole::print()
{
}
