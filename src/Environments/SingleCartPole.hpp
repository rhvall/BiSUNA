//
//  SingleCartPole.hpp
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

#ifndef SingleCartPole_hpp
#define SingleCartPole_hpp

#include "ReinforcementEnvironment.hpp"

#define FORCE_MAG 10.0
   
class SingleCartPole : public ReinforcementEnvironment
{
	public:

		SingleCartPole(ushortT eID, const char *fileName);
		~SingleCartPole();
    
		void start(int &numObsVars, int &numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
	
		//auxiliary functions
        void cartPole(float force, float *x, float *xDot, float *theta, float *thetaDot);

		float x, xDot, theta, thetaDot;
};

#endif // SingleCartPole_hpp
