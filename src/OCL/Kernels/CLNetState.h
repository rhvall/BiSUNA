//
//  CLNetworkStateKernel.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 4/03/20.
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

#ifndef CLNetState_h
#define CLNetState_h

#include "CLSupportFunctions.h"

CLPType execute(tycheIState *tSt,
                ushort idx,
                bool ignoreIfOnlyRecurrent,
                ushort4 netSt,
                local CLNeuron *neurons,
                local CLConnection *conns,
                local CLPType *input,
                local CLPType *output);

void processInputNeurons(tycheIState *tSt,
                         ushort4 netSt,
                         local CLNeuron *neurons,
                         local CLConnection *conns,
                         local CLPType *input,
                         local CLPType *output);

void processOutputNeurons(tycheIState *tSt,
                          ushort4 netSt,
                          local CLNeuron *neurons,
                          local CLConnection *conns,
                          local CLPType *input,
                          local CLPType *output);

void runControlID(ushort idx,
                  ushort connSize,
                  local CLConnection *conns,
                  local CLNeuron *neuronsSt);

void processCPrimerNeurons(tycheIState *tSt,
                           ushort4 netSt,
                           local CLNeuron *neurons,
                           local CLConnection *conns,
                           local CLPType *input,
                           local CLPType *output);

void processControlNeurons(tycheIState *tSt,
                           ushort4 netSt,
                           local CLNeuron *neurons,
                           local CLConnection *conns,
                           local CLPType *input,
                           local CLPType *output);

void processRemainingNeurons(tycheIState *tSt,
                             ushort4 netSt,
                             local CLNeuron *neurons,
                             local CLConnection *conns,
                             local CLPType *input,
                             local CLPType *output);

#endif // CLNetState_h
