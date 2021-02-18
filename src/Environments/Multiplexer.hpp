//
//  Multiplexer.cpp
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

#ifndef Multiplexer_hpp
#define Multiplexer_hpp

#include "ReinforcementEnvironment.hpp"

class Multiplexer : public ReinforcementEnvironment
{
	public:
		Multiplexer(ushortT eID, const char *fileName);
		~Multiplexer();
		
		int currentCombination;
		int allCombinations;
		char **inputData;
		int addressBits;
		int dataBits;
		bool normalizedObservation;
		bool normalizedAction;

		void shuffle();
		ParameterType getCorrectOutput();
	
		//API
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
};

#endif // Multiplexer_hpp
