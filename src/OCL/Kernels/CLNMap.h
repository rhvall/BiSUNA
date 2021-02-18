//
//  CLNMap.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 15/2/20.
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

#ifndef CLNMap_h
#define CLNMap_h

#import "CLNetworkStruct.h"

void initializeNMap(global CLNoveltyMap *nmap, ulong *initArr);
ulong distanceBetween(const ulong a, const ulong b);
CLNMStrIndex minDistance(ulong input, global CLNMStr *nmStrs, int idx);
CLNMStrIndex arrayMinDistance(global CLNMStr *nmStrs);
void replaceValue(ulong input, global CLNoveltyMap *nmap);
ushort idxPosition(ulong input, global CLNoveltyMap *nmap);

void copyNMapFromGlobal(global CLNoveltyMap *fromNMap, CLNoveltyMap *toNMap);
void copyNMapToGlobal(global CLNoveltyMap *toNMap, CLNoveltyMap *fromNMap);

#endif // CLNMap_h
