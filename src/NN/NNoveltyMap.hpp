//
//  NNoveltyMap.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 3/6/19.
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

#ifndef NNoveltyMap_hpp
#define NNoveltyMap_hpp

#include "Configuration/PConfig.hpp"

// Novelty Map Store
struct NMStr
{
    ulongT weight;
    void *ptr; // In order to keep values referenced in this cell
    
    NMStr(const ulongT value = 0, void *pointer = NULL):
        weight(value), ptr(pointer) {};
};

struct NMStrIndex
{
    ushortT ciDist;
    ushortT ciIndex;
    
    NMStrIndex(const ushortT dist = OUT_INDEX,
               const ushortT idx = 0):
        ciDist(dist), ciIndex(idx) {};
};

struct NNoveltyMap
{
    // When creating a novelty map, it should have the initial values that are going to
    // be stored in the nmap, that will set the population size and will calculate the
    // minimum distance between individuals
    NNoveltyMap(const vector<ulongT> &input = {});
    ~NNoveltyMap();
    
    vector<NMStr> nmStrs;
    ushortT popSize;
    NMStrIndex lastIdx;
};

struct NNMapFunction
{
    static ushortT distanceBetween(const ulongT a, const ulongT b);
    static NMStrIndex minDistance(const ulongT input, const vector<NMStr> &nmStrs, const int idx = -1);
    static NMStrIndex vectorMinDistance(const vector<NMStr> &nmStrs);
    static void replaceValue(const ulongT input, NNoveltyMap *nmap);
    static ushortT idxPosition(const ulongT input, NNoveltyMap *nmap);
};

#endif /* NNoveltyMap_hpp */
