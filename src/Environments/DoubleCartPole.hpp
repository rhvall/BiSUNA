//
//  DoubleCartPole.hpp
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

#ifndef DoubleCartPole_hpp
#define DoubleCartPole_hpp

#include "ReinforcementEnvironment.hpp"
  	
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

class DoubleCartPole : public ReinforcementEnvironment
{
	public:

		DoubleCartPole(ushortT eID, const char *fileName);
		~DoubleCartPole();
		
		float state[6];
		bool  normalizedObservation;
		bool  normalizedAction;
		
		//Reinforcement Problem API
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
	
		//auxiliary functions
        void dcpIteration(float action, float *st, float *derivs);
        void rk4(float f, float y[], float dydx[], float yout[]);
        void copyToObservation(float *obs);
};

#endif // DoubleCartPole_hpp
