//
//  CLNMap.cl
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

#include "CLNMap.h"

inline ulong distanceBetween(const ulong a, const ulong b)
{
    ulong c = a ^ b;
    return popcount(c);
}

CLNMStrIndex minDistance(ulong input, global CLNMStr *nmStrs, int idx)
{
    CLNMStrIndex elem = {USHRT_MAX, 0};
    
    for (int i = 0; i < NMSIZE; i++) {
        ulong w = nmStrs[i].weight;
        
        if (idx == i) {
            continue;
        }
        
        if (input == w) {
            elem.ciDist = 0;
            elem.ciIndex = i;
            break;
        }
        
        ushort currDist = distanceBetween(w, input);
        if (currDist < elem.ciDist) {
            elem.ciDist = currDist;
            elem.ciIndex = i;
        }
    }
    
    return elem;
}

CLNMStrIndex arrayMinDistance(global CLNMStr *nmStrs)
{
    CLNMStrIndex idx = {65535, 0};
    
    for (uint i = 0; i < NMSIZE; i++) {
        CLNMStrIndex minIdx = minDistance(nmStrs[i].weight, nmStrs, i);
        if (idx.ciDist > minIdx.ciDist) {
            idx.ciDist = minIdx.ciDist;
            idx.ciIndex = i;
        }
    }
        
    return idx;
}

void initializeNMap(global CLNoveltyMap *nmap, ulong *initArr)
{
    for (uint i = 0; i < NMSIZE; i++) {
        nmap->nmStrs[i].weight = initArr[i];
        nmap->nmStrs[i].cellRef = USHRT_MAX;
    }
    
    nmap->lastIdx = arrayMinDistance(nmap->nmStrs);
}

void replaceValue(ulong input, global CLNoveltyMap *nmap)
{
    // Any new elements will replace the "worst individual" given
    // a previously calculated distance of lesser value than what it
    // is intended to append.
    ushort worstInd = nmap->lastIdx.ciIndex;
    nmap->nmStrs[worstInd].weight = input;
    nmap->lastIdx = arrayMinDistance(nmap->nmStrs);
};

ushort idxPosition(ulong input, global CLNoveltyMap *nmap)
{
    CLNMStrIndex res = minDistance(input, nmap->nmStrs, -1);
    bool lessDist = nmap->lastIdx.ciDist < res.ciDist;
    if (lessDist) {
        replaceValue(input, nmap);
        return nmap->lastIdx.ciIndex;
    }
    
    return res.ciIndex;
}

void copyNMapFromGlobal(global CLNoveltyMap *fromNMap, CLNoveltyMap *toNMap)
{
    toNMap->lastIdx.ciDist = fromNMap->lastIdx.ciDist;
    toNMap->lastIdx.ciIndex = fromNMap->lastIdx.ciIndex;

    for (uint i = 0; i < NMSIZE; i++) {
        toNMap->nmStrs[i].weight = fromNMap->nmStrs[i].weight;
        toNMap->nmStrs[i].cellRef = fromNMap->nmStrs[i].cellRef;
    }
}

void copyNMapToGlobal(global CLNoveltyMap *toNMap, CLNoveltyMap *fromNMap)
{
    toNMap->lastIdx.ciDist = fromNMap->lastIdx.ciDist;
    toNMap->lastIdx.ciIndex = fromNMap->lastIdx.ciIndex;

    for (uint i = 0; i < NMSIZE; i++) {
        toNMap->nmStrs[i].weight = fromNMap->nmStrs[i].weight;
        toNMap->nmStrs[i].cellRef = fromNMap->nmStrs[i].cellRef;
    }
}
