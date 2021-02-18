//
//  FunctionApproximation.hpp
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

#ifndef FunctionApproximation_hpp
#define FunctionApproximation_hpp

#include "ReinforcementEnvironment.hpp"

class FunctionApproximation : public ReinforcementEnvironment
{

	public:
		FunctionApproximation(ushortT eID, const char *fileName);
		~FunctionApproximation();
		
		uint problemIndex;
		uint solvedCounter;

        bool isSequential;
        bool isSupervised;
        bool isMutilpleRandom;
        uintT numberFunctionAppx;
        
    	int evaluationsPerEpisode;
		int evaluation;
		bool verbose;
	
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
        ParameterType obsValue(float val);
};

#endif
