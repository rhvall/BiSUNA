//
//  CLSupportFunctions.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 23/8/19.
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

#ifndef CLSupportFunctions_h
#define CLSupportFunctions_h

#include "CLNetworkStruct.h"
#include "TycheI.h"

CLPType activationFunction(tycheIState *tSt, ushort nt, CLPType weightedInput);
bool checkExcitationThreshold(CLPType ne);
CLPType betaOfFiringRate(ushort fr);
CLPType stateActivation(ushort nFR, CLPType prevSt, CLPType neuronOutput);
bool remainingNeuronThreshold(CLPType output);
CLPType neuronOpr(CLPType a, CLPType b, CLPType c);

ushort clNeuronTypeByIndex(ushort idx);
ushort clFiringRateByIndex(ushort idx);
#endif /* CLSupportFunctions_h */
