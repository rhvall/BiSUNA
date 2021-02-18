//
//  DoubleCartPole.cpp
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

#include "DoubleCartPole.hpp"
#include "Parameters.hpp"
#include "Discretizer.h"

//Double Pole Balancing
#define MAX_DOUBLE_POLE_STEPS 100000
#define NON_MARKOV_DOUBLE_POLE


DoubleCartPole::DoubleCartPole(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
	maxSteps = MAX_DOUBLE_POLE_STEPS;
	trial = -1;	//the first trial will be zero, because restart() is called making it increment
    normalizedObservation = false;
    normalizedAction = false;
}

DoubleCartPole::~DoubleCartPole()
{
}

void DoubleCartPole::start(int &numObsVars, int &numActionVars)
{
#ifdef NON_MARKOV_DOUBLE_POLE
	//printf("non markov\n");
	numObsVars = 3;
	this->observationVars = 3;
#else
	numObsVars = 6;
	this->observationVars = 6;
#endif
    
	observation = (ParameterType *) malloc(numObsVars * sizeof(ParameterType));
	numActionVars = 1;
	this->actionVars = 1;

	restart();
}

void DoubleCartPole::dcpIteration(float action, float *st, float *derivs)
{
    float force,costheta_1,costheta_2,sintheta_1,sintheta_2,
          gsintheta_1,gsintheta_2,temp_1,temp_2,ml_1,ml_2,fi_1,fi_2,mi_1,mi_2;

	if(normalizedAction)
	{
	    force = (action - 0.5) * FORCE_MAG * 2.0;
	}
	else
	{
	    force = action;
	}

    if(action > FORCE_MAG)
    {
        force = FORCE_MAG;
    }
    else if(action < -FORCE_MAG)
    {
        force = -FORCE_MAG;
    }

    costheta_1 = cos(st[2]);
    sintheta_1 = sin(st[2]);
    gsintheta_1 = GRAVITY * sintheta_1;
    costheta_2 = cos(st[4]);
    sintheta_2 = sin(st[4]);
    gsintheta_2 = GRAVITY * sintheta_2;
    
    ml_1 = LENGTH_1 * MASSPOLE_1;
    ml_2 = LENGTH_2 * MASSPOLE_2;
    temp_1 = MUP * st[3] / ml_1;
    temp_2 = MUP * st[5] / ml_2;
    fi_1 = (ml_1 * st[3] * st[3] * sintheta_1) +
           (0.75 * MASSPOLE_1 * costheta_1 * (temp_1 + gsintheta_1));
    fi_2 = (ml_2 * st[5] * st[5] * sintheta_2) +
           (0.75 * MASSPOLE_2 * costheta_2 * (temp_2 + gsintheta_2));
    mi_1 = MASSPOLE_1 * (1 - (0.75 * costheta_1 * costheta_1));
    mi_2 = MASSPOLE_2 * (1 - (0.75 * costheta_2 * costheta_2));
    
    derivs[1] = (force + fi_1 + fi_2)
                 / (mi_1 + mi_2 + MASSCART);
    
    derivs[3] = -0.75 * (derivs[1] * costheta_1 + gsintheta_1 + temp_1)
                 / LENGTH_1;
    derivs[5] = -0.75 * (derivs[1] * costheta_2 + gsintheta_2 + temp_2)
                  / LENGTH_2;
}

void DoubleCartPole::rk4(float f, float y[], float dydx[], float yout[])
{
	int i;

	float hh, h6, dym[6], dyt[6], yt[6];

	hh = TAU * 0.5;
	h6 = TAU / 6.0;
	
    for (i = 0; i <= 5; i++) yt[i] = y[i] + hh * dydx[i];
	
    dcpIteration(f, yt, dyt);
	
    dyt[0] = yt[1];
	dyt[2] = yt[3];
	dyt[4] = yt[5];
	
    for (i = 0; i <= 5; i++) yt[i] = y[i] + hh * dyt[i];
	
    dcpIteration(f,yt,dym);
	
    dym[0] = yt[1];
	dym[2] = yt[3];
	dym[4] = yt[5];
	
    for (i = 0; i <= 5; i++) {
		yt[i] = y[i] + TAU * dym[i];
		dym[i] += dyt[i];
	}
    
	dcpIteration(f, yt, dyt);
	
    dyt[0] = yt[1];
	dyt[2] = yt[3];
	dyt[4] = yt[5];
    
	for (i = 0; i <= 5; i++)
		yout[i] = y[i] + h6 * (dydx[i] + dyt[i] + 2.0 * dym[i]);
}

float DoubleCartPole::step(ParameterType *action)
{
    const float failureAngle = thirty_six_degrees;
    float dydx[6];
    float obs[6];
    float act;

	// initial reward
	if(action == NULL)
	{
		return 1;
	}

	//state[0] -cart position
	//state[1] -cart velocity
	//state[2] -pole position
	//state[3] -pole velocity
	//state[4] -pole position
	//state[5] -pole velocity
    
#ifdef CONTINUOUS_PARAM
    act = action[0];
#else
    ParameterType pre = action[0];
    act = transformFromPT(pre, -100, 100);
#endif

	for(int i = 0; i < 2; ++i)
	{
		dydx[0] = state[1];
		dydx[2] = state[3];
		dydx[4] = state[5];
		 
        dcpIteration(act, state, dydx);
		rk4(act, state, dydx, state);
	}
	
#ifdef NON_MARKOV_DOUBLE_POLE
	if(normalizedObservation)
	{
		//copy the state to the agents' observable variables
		obs[0] = state[0] / 4.8;
		obs[1] = state[2] / 0.52;
		obs[2] = state[4] / 0.52;
	}
	else
	{
		//copy the state to the agents' observable variables
		obs[0] = state[0];
		obs[1] = state[2];
		obs[2] = state[4];

	}
#else
	if(normalizedObservation)
	{
		obs[0] = state[0] / 4.8;
		obs[1] = state[1] / 2.0;
		obs[2] = state[2] / 0.52;
		obs[3] = state[3] / 2.0;
		obs[4] = state[4] / 0.52;
		obs[5] = state[5] / 2.0;
	}
	else
	{
		//copy the state to the agents' observable variables
		for(int i = 0; i < observationVars; ++i)
		{
			obs[i] = state[i];
		}
	}
#endif
    
    copyToObservation(obs);
    
	//--- Check for failure.  If so, return negative reward---
	if( state[0] < -2.4              ||
	    state[0] > 2.4               ||
	    state[2] < -failureAngle     ||
	    state[2] > failureAngle      ||
	    state[4] < -failureAngle     ||
	    state[4] > failureAngle)
	{
		restart();
		return -10;
	}

	return 1;
	// return 1 / (x * x + theta * theta + 0.001);
}

bool DoubleCartPole::set(int feature)
{
	switch(feature)
	{
		case NormalizedObservation:
		{
			normalizedObservation = true;
			return true;
		}
		break;
		case NormalizedAction:
		{
			normalizedAction = true;
			return true;
		}
		break;
		default:
		{
			return false;
		}
	}
}

float DoubleCartPole::restart()
{
	trial++;
    float obs[6];
    
//    if(RANDOM_START)
//    {
//        x = random->uniform(-2.4, 2.4);
//        xDot = random->uniform(-1, 1);
//        theta = random->uniform(-0.2, 0.2);
//        thetaDot = random->uniform(-1.5, 1.5);
//    }
//    else
    {
    		state[0] = state[1] = state[3] = state[4] = state[5] = 0;
    		state[2] = 0.07; // one_degree;
	}

#ifdef NON_MARKOV_DOUBLE_POLE
	if(normalizedObservation)
	{
		//copy the state to the agents' observable variables
		obs[0] = state[0] / 4.8;
		obs[1] = state[2] / 0.52;
		obs[2] = state[4] / 0.52;
	}
	else
	{
		//copy the state to the agents' observable variables
		obs[0] = state[0];
		obs[1] = state[2];
		obs[2] = state[4];

	}
#else
	if(normalizedObservation)
	{
		obs[0] = state[0] / 4.8;
		obs[1] = state[1] / 2.0;
		obs[2] = state[2] / 0.52;
		obs[3] = state[3] / 2.0;
		obs[4] = state[4] / 0.52;
		obs[5] = state[5] / 2.0;
	}
	else
	{
		//copy the state to the agents' observable variables
		for(int i = 0; i < observationVars; ++i)
		{
			obs[i] = state[i];
		}
	}
#endif
    
    copyToObservation(obs);

	return 1;
	// return 1 / (x * x + theta * theta + 0.001);
}

void DoubleCartPole::print()
{
}

void DoubleCartPole::copyToObservation(float *obs)
{
    for(int i = 0; i < observationVars; ++i)
    {
#ifdef CONTINUOUS_PARAM
        observation[i] = obs[i];
#else
        float ob = obs[i];
        ParameterType param = transformToPT(ob, -10, 10);
        observation[i] = param;
#endif
    }
}
