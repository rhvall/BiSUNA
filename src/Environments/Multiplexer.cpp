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

#include "Multiplexer.hpp"
#include "math.h"
#include "RandomUtils.hpp"
#include "Parameters.hpp"

Multiplexer::Multiplexer(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    int addressBits = 0;
    int dataBits = 0;
	trial = -1;
	
	this->addressBits = addressBits;
	this->dataBits = dataBits;

	//check for out of bound addresses
	int addressableBits = (int) pow(2,addressBits);
	if(addressableBits != dataBits) {
		//printf("ERROR: address bits can address more bits than available on the dataBits\n");
		printf("ERROR: incompatible address bits and data bits\n");
		exit(1);
	}

	//allocate all and set all combinations of inputs
	unsigned int iterator = 0;
	unsigned int one = 1;
	allCombinations = (int)pow(2, dataBits + addressBits);
	inputData = (char **)malloc(allCombinations * sizeof(char *));
	for(int i = 0; i < allCombinations; ++i)
	{
		inputData[i] = (char *)calloc(dataBits + addressBits,sizeof(char));
		for(int j = 0; j < (dataBits + addressBits); ++j)
		{
			unsigned int select_bit = one << j;
			char value = (iterator & select_bit) >> j;
			inputData[i][j] = value;
		}
			
		iterator++;
	}

	//allocate a temporary address for use in the evaluation step
	//tmp_address=(char *)calloc(addressBits,sizeof(char));

	//max steps is just an arbitrary very big number
	//just to make sure the episode will not stop before it should
	maxSteps = allCombinations * 100;

	//printf("all combinations %d\n",allCombinations);
}

Multiplexer::~Multiplexer()
{
	//free(tmp_address);
}

void Multiplexer::start(int &numObsVars, int &numActionVars)
{
	numObsVars = addressBits + dataBits;
	this->observationVars = numObsVars;
	observation = (ParameterType *)malloc(numObsVars * sizeof(ParameterType));

	numActionVars = 1;
	this->actionVars = numActionVars;

	// Initialize
	restart();
}

float Multiplexer::step(ParameterType *action)
{
	// initial reward
	if (action == NULL)
	{
		return 0;
	}

	//--------------------- Evaluate ------------------------

	float reward = 0.0;

	ParameterType correctOutput = getCorrectOutput();

	//debug
	//printf("correct %f\n\n",correct_result);
	
	//discretize action (output)
	ParameterType discrete_output = 0;
    ParameterType act = action[0];
	
#ifdef CONTINUOUS_PARAM
    if (act > 0.5) {
        discrete_output = 1;
    }
#else
    if (act == MAXIMUM_WEIGHT) {
        discrete_output = 1;
    }
// TODO!! Check how to connect directly the action with discrete_output
//    discrete_output = act;
#endif

	//printf("%f (%f)",action[0],discrete_output);
	
	//calculate squared error
	//notice that mean squared error MSE = 1/n (\sum (y - correct_y)^2)
	float error = (discrete_output - correctOutput);
	//since the output is binary the squared_error must be either 0 or 1
    float squared_error = error * error;

	reward = -squared_error;

	//--------------------- Update Values and Check for End of Trial ------------------------
	
	//next step will be a different combination of inputs
	currentCombination++;
	
	//check if all combinations were already tested
	if(currentCombination >= allCombinations)
	{
		restart();
		return reward;
	}
	
	//set observation to current combination of inputs
	for(int j = 0; j < (dataBits + addressBits); ++j)
	{
		observation[j] = (ParameterType) inputData[currentCombination][j];
	}

	return reward;
}

bool Multiplexer::set(int feature)
{
	switch(feature)
	{
		case NormalizedObservation:
		{
			//it is a binary problem {0,1} so the observation range is always in the normalized range [-1,1]
			normalizedObservation = true;
			return true;
		}
		break;
		case NormalizedAction:
		{
			//it is a binary problem {0,1} so the action range is always in the normalized range [0,1]
			//in fact, to avoid problems with the simmetry of the actions for sensitive agents, the threshold is set at 0.5, so 0.51 is 1 and 0.49 is 0.
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

//print all combinations of input data
void Multiplexer::print()
{
	for(int i = 0; i < allCombinations; ++i)
	{
		for(int j = 0; j < (dataBits + addressBits); ++j)
		{
			printf("%d ",inputData[i][j]);
		}
		printf("\n");
	}
}

//for all arrays, swap its position with a random selected array
void Multiplexer::shuffle()
{
	for(int i = 0; i < allCombinations; ++i)
	{
        int random_index = RandomUtils::randomPositive(allCombinations - 1);
		
		//swap values between random_index and this one
		for(int j = 0; j < (dataBits + addressBits); ++j)
		{
			char tmp = inputData[i][j];
			inputData[i][j]= inputData[random_index][j];
			inputData[random_index][j]= tmp;
		}
	}
}

//correct output for current combination
ParameterType Multiplexer::getCorrectOutput()
{
	unsigned int address = 0;
	for(int j = dataBits; j < dataBits + addressBits; ++j)
	{
		//tmp_address[j-dataBits]= observation[j];
		char value = (char) observation[j];
		address |= value << (j - dataBits);
	}

	/*
	 * debug
	for(int j = 0; j < dataBits;++j)
	{
		printf("%f ",observation[j]);
	}
	printf(" | ");
	for(int j = dataBits; j < dataBits + addressBits; ++j)
	{
		printf("%f ",observation[j]);
	}
	printf("\n");

	printf("address %d\n",address);
	*/

	return observation[address];
}

float Multiplexer::restart()
{
	trial++;
	
	shuffle();

	//reset current combination counter
	currentCombination = 0;

	//set observation to current combination of inputs
	for (int j = 0; j < (dataBits + addressBits); ++j)
	{
		observation[j] = (ParameterType) inputData[currentCombination][j];
	}

	return 0;
}




