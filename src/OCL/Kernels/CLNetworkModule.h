//
//  CLNetworkModule.cl
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

#ifndef CLNetworkModule
#define CLNetworkModule

#include "CLNetworkStruct.h"
#include "TycheI.h"

void weightMutation(tycheIState *state, CLConnection *conn);
void addNeuron(tycheIState *state, global CLCell *netModule);
ushort deleteNeuron(ushort nID, global CLCell *netModule);
void deleteNeuronConnections(ushort removeNID, ushort updateNID, global CLConnection *conns, global ushort *connSize);
void addConnection(tycheIState *state, global CLCell *netModule);
ushort deleteConnection(ushort connPos, global CLConnection *conns, ushort consLength);
void updatePrimers(global CLCell *netModule);
void structuralMutation(tycheIState *state, global CLCell *cell);

#endif // CLNetworkModule
