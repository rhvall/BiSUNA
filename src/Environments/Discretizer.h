//
//  Discretizer.h
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

#ifndef Discretizer_h
#define Discretizer_h

#include "Parameters.hpp"
#include <cmath>

inline float transformFromPT(unsigned short int val, float minBound = -1, float maxBound = 1) {
#ifdef CONTINUOUS_PARAM
    return 0;
#else
    if (val >= MAXIMUM_WEIGHT) {
        return maxBound;
    }
    else if (val == 0) {
        return minBound;
    }
    
    float v = (val - MID_WEIGHT) * maxBound / MID_WEIGHT;
    
    return v;
#endif
}

inline unsigned short int transformToPT(float val, float minBound = -1, float maxBound = 1) {
#ifdef CONTINUOUS_PARAM
    return 0;
#else
    if (val >= maxBound) {
        return MAXIMUM_WEIGHT;
    }
    else if (val <= minBound) {
        return 0;
    }

    float v = abs(round(MID_WEIGHT + (MID_WEIGHT * val) / maxBound));
// TODO!! For some reason to be explored, using HALF_WEIGHT in some environments
// helps to reach a solution faster (ex. MountainCar or FunctionApproximation)
//     float v = abs(round(HALF_WEIGHT + (HALF_WEIGHT * val) / maxBound));
    
    return static_cast<ParameterType>(v);
#endif
}

#endif /* Discretizer_h */
