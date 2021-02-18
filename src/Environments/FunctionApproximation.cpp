//
//  FunctionApproximation.cpp
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

#include "FunctionApproximation.hpp"
#include "RandomUtils.hpp"
#include "Parameters.hpp"
#include "Discretizer.h"

FunctionApproximation::FunctionApproximation(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    trial = -1;
    evaluationsPerEpisode = (uintT) ini.GetInteger("FunctionApproximation", "EvaluationsPerEpisode", 1000);;
    verbose = ini.GetBoolean("FunctionApproximation", "Verbose", false);;
    numberFunctionAppx = (uintT)ini.GetInteger("FunctionApproximation", "NumberOfFunctionApproximation", 2);
    isMutilpleRandom = ini.GetBoolean("FunctionApproximation", "MultipleRandomFunctionApproximation", false);
    isSupervised = ini.GetBoolean("FunctionApproximation", "Supervised", false);
    isSequential = ini.GetBoolean("FunctionApproximation", "Sequential", true);
    
    if (isSequential) {
        maxSteps = evaluationsPerEpisode*100;
    }
    else {
        maxSteps = evaluationsPerEpisode;
    }

	//force a random selection between the possible functionn, see restart()
    
    if (isMutilpleRandom) {
        solvedCounter = numberFunctionAppx;
        problemIndex = RandomUtils::randomPositive(numberFunctionAppx - 1);
    }
}

FunctionApproximation::~FunctionApproximation()
{
}

void FunctionApproximation::start(int &numObsVars, int &numActionVars)
{
    if (isSupervised) {
        numObsVars = 2;
    }
    else {
        numObsVars = 1;
    }
    
	this->observationVars = numObsVars;
	observation = (ParameterType *)malloc(numObsVars * sizeof(ParameterType));

	numActionVars = 1;
	this->actionVars = numActionVars;

	// Initialize state of Car
	restart();
    if (isSupervised) {
        observation[1] = 0;
    }
}

float FunctionApproximation::step(ParameterType *action)
{
	// initial reward
	if (action == NULL)
	{
		return 0;
	}

	/////////////////////////////////////////////////////////////////////////
	//Equation
	/////////////////////////////////////////////////////////////////////////

	float result = 0;

#ifdef CONTINUOUS_PARAM
    float act = action[0];
#else
    float act = transformFromPT(action[0], -1000, 1000);
#endif
    
    if (isMutilpleRandom) {
        switch(problemIndex)
        {
            case 0:
            {
                result = observation[0] * 1.43 + 1.69;
            }
            break;
            case 1:
            {
                ParameterType x = observation[0];
                result = x * x * x / 1000 + 0.4 * x + 20 * sin(x / 10) + 20 * sin(100 * x);
                //result = observation[0]*1.43 + 1.69;
                //result = -result;
            }
            break;
        }
    }
    else {
        //result = observation[0]*1.43 + 1.69;
    #ifdef CONTINUOUS_PARAM
        float x = observation[0];
    #else
        float x = observation[0] - 100;
    #endif
        result = x * x  * x / 1000 + 0.4 * x + 20 * sin(x / 10) + 20 * sin(100 * x);
    }

	if (verbose)
	{
#ifdef CONTINUOUS_PARAM
        printf ("%f %f %f\n", observation[0], action[0], result);
#else
        printf ("%i %i %f\n", observation[0], action[0], result);
#endif
	}

	float reward = -fabs(act - result);

    if (isSupervised) {
        /*if (reward > 0.2 * action[0] || reward < -0.2 * action[0])
        {
            observation[1] = 1;
        }
        else
        {
            observation[1] = 0;
        }
        */
        //observation[1] = result;
        observation[1] = (ParameterType)problemIndex;
    } 
	//printf ("reward %f\n",reward);
		
    if (isSequential) {
        observation[0] += 1;
        
        if (observation[0] >= 100)
        {
            restart();
            return reward;
        }
    }
    else {
        float rndm = RandomUtils::randomRangeFloat(-100.0, 100.0);
        observation[0] = obsValue(rndm);
    }

	return reward;
}

void FunctionApproximation::print()
{
	//printf ("Equation x*1.43 + 1.69, %f velocity %f\n",observation[0]);
}

float FunctionApproximation::restart()
{
	trial++;
	evaluation = 0;

    if (isSequential) {
        observation[0] = obsValue(-100);
    }
    else {
        float rndm = RandomUtils::randomRangeFloat(-100.0, 100.0);
        observation[0] = obsValue(rndm);
    }
	
	//printf ("%f %f \n",observation[0],observation[1]);
		
    if (isMutilpleRandom) {
        solvedCounter++;
        if (solvedCounter >= numberFunctionAppx)
        {
            //since all problems were already tested, start again from a different initial problem
            problemIndex = RandomUtils::randomPositive(numberFunctionAppx - 1);
            solvedCounter = 0;
        }
        else
        {
            //go to a different problem
            problemIndex++;

            if (problemIndex >= numberFunctionAppx)
            {
                problemIndex = 0;
            }
        }
        
        observation[1] = (ParameterType)problemIndex;
    }

	return 0;
}

ParameterType FunctionApproximation::obsValue(float val) {
#ifdef CONTINUOUS_PARAM
    return val;
#else
    return val + 100;
#endif
}
