//
//  MountainCar.h
//  BiSUNA
//
//  Created by R on 12/4/19.
//  Copyright © 2019 R. All rights reserved.
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

#ifndef MountainCar_hpp
#define MountainCar_hpp

#include "ReinforcementEnvironment.hpp"

class MountainCar : public ReinforcementEnvironment
{
	public:
		MountainCar(ushortT eID, const char *fileName);
		~MountainCar();
		
    // Global variables:
		float mcarPosition, mcarVelocity;
		int lastChange;
		bool normalizedObservation;
		bool normalizedAction;
	
		float mcarMinPosition;
		float mcarMaxPosition;
		float mcarMaxVelocity;            // the negative of this in the minimum velocity
		float mcarGoalPosition;
			
        uintT mcarTrialsToChange;
        float modMaxVel;
        bool changesMaxVelocity;
        bool isNoisyCar;
        bool isContinuous;
		bool originalValue;
			
		void start(int &numObsVars, int& numActionVars);
		float step(ParameterType *action);
		float restart();
		void print();
		bool set(int feature);
};

#endif
