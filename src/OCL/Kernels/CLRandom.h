//
//  CLRandom.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 21/2/20.
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

#ifndef CLRandom_h
#define CLRandom_h

#include "CLSupportFunctions.h"

ushort randomCLFRNT(tycheIState* state);
ushort randomUShortRange(tycheIState* state, ushort minRange, ushort maxRange);
float randomFloatRange(tycheIState* state, float minRange, float maxRange);
CLNeuron randomNeuron(tycheIState* state);
CLConnection randomConnection(tycheIState* state, uint neuronSize);
ushort randomMutationType(tycheIState *state);

#endif // CLRandom_h
