//
//  CLUNM.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 11/2/20.
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


#ifndef CLUNM_h
#define CLUNM_h

#include "CLSupportFunctions.h"

ulong calculateSpectrum(CLNeuron *neurons, ushort nrsSize);
bool compareTwoCells(const float2 a, const float2 b);
void noveltyMapParents(global CLUnifiedNeuralModel *unm);
void copyParentData(ushort netID, global CLCell *parentCell, global CLCell *cell);
void cellMutation(tycheIState *state, global CLCell *cell);
void noveltyPopulationModification(tycheIState *state, global CLUnifiedNeuralModel *unm);

#endif // CLUNM_h
