//
//  CLUNM.cl
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

#include "CLNMap.h"
#include "CLNetworkModule.h"
#include "CLNetState.h"
#include "CLRandom.h"
#include "CLUNM.h"

void resetState(global CLCell *cell)
{
    for (uint i = 0; i < cell->nrsSize; i++) {
        cell->clNrs[i].clFired = false;
        cell->clNrs[i].clSt = 0;
        cell->clNrs[i].clPSt = 0;
        cell->clNrs[i].clExc = 0;
    }

    for (uint i = 0; i < cell->connSize; i++) {
        cell->clCons[i].clCnType = false;
        cell->clCons[i].clPCnType = false;
    }
}

// In order to create the spectrum of a NNeuron vector, a single 64 bits unsigned
// integer is needed, given that there are 6 different types of categories, each
// uses 10 bits of it, the schematic is as follows:
// ntID         0               - 1023
// ntThreshold  1024            - 1047552
// ntRandom     1048576         - 1072693248
// ntControl    1073741824      - 1098437885952
// ntActivation 1099511627776   - 1124800395214848
// firingRate   1125899906842624- 1151795604700004352
// ntCPrimer 1152921504606846976- 17293822569102704640
// Using 64 bits, the network spectrum can differentiate neuron types up to
// 1023 of the same type and combined 7161 within the spectra. If more types are
// needed, then reduce the bit size of 10 or use two or more ulongT to store data.
ulong calculateSpectrum(CLNeuron *neurons, ushort nrsSize)
{
    ulong tID = 0, tAc = 0, tTh = 0, tRa = 0, tCo = 0, tCP = 0, tFR = 0;
    for (uint i = 0; i < nrsSize; i++) {
        ushort nType = neurons[i].clFRNT;
        
        //        ntID = 16,
        nType & 16 ? tID++ : 0;
        //        ntActivation = 32,
        nType & 32 ? tAc++ : 0;
        //        ntThreshold = 64,
        nType & 64 ? tTh++ : 0;
        //        ntRandom = 128,
        nType & 128 ? tRa++ : 0;
        //        ntControl = 256,
        nType & 256 ? tCo++ : 0;
        //        ntCRoll = 512 | ntCPrimer = 1024,
        nType & 1536 ? tCP++ : 0;
        (nType >> 11) != 0 ? tFR++ : 0;
    }
    
    tID = tID < 1023 ? tID & 1023 : 1023;
    tTh = tTh < 1023 ? (tTh << 10) & 1047552 : 1047552;
    tRa = tRa < 1023 ? (tRa << 20) & 1072693248 : 1072693248;
    tCo = tCo < 1023 ? (tCo << 30) & 1098437885952 : 1098437885952;
    tAc = tAc < 1023 ? (tAc << 40) & 1124800395214848 : 1124800395214848;
    tFR = tFR < 1023 ? (tFR << 50) & 1151795604700004352 : 1151795604700004352;
    // Primer neurons could only be counted up to 15
    ulong maxtCP = 0xF000000000000000;
    tCP = tCP < 15 ? (tCP << 60) & maxtCP : maxtCP;
    
    return tID | tTh | tRa | tCo | tAc | tFR | tCP;
}

// Call this function with two vectors that contain values as follows:
// 0: Cell fitness
// 1: Neuron Size
// Will return boolean with the conditional of greater fitness or
// same fitness with less neurons
bool compareTwoCells(const float2 a, const float2 b)
{
    bool betterFitness = a.s0 > b.s0;
    bool lessEqNeurons = a.s1 <= b.s1;
    bool sameFitness = a.s0 == b.s0;
    
    return betterFitness || (sameFitness && lessEqNeurons);
}

void noveltyMapParents(global CLUnifiedNeuralModel *unm)
{
    // From all agents, decide which are going to be selected as parents
    for(uint i = 0; i < CELL_POPULATION; i++) {
        CLCell cell = unm->cells[i];
        // Calculate each agent spectrum
        ulong spectrum = calculateSpectrum(cell.clNrs, cell.nrsSize);

        // Compare the spectrum to what the in Novelty Map currently holds, if it
        // is considered a "novel" spectrum, then it will store that value and
        // return the "wost" individual given the distance metric. In case it is
        // not inserted, it will return the closest individual to what the nmap
        // currently holds.
        ushort idxPos = idxPosition(spectrum, &(unm->nmap));
        CLNMStr str = unm->nmap.nmStrs[idxPos];

        if (str.cellRef == USHRT_MAX) {
            unm->nmap.nmStrs[idxPos].cellRef = i;
            continue;
        }

        CLCell stored = unm->cells[str.cellRef];
        float2 stVals = (float2)(stored.clFitness, stored.nrsSize);
        float2 currVals = (float2)(cell.clFitness, cell.nrsSize);
        // This case, it means that the agent spectra is not substantially different
        // from what the novelty map currently holds, it is necessary to compare
        // more details about it
        bool isCurrentBetter = compareTwoCells(currVals, stVals);

        // In case that the current agent has a better fitness than the one
        // referenced by the nmap, it will replace its stored pointer.
        if (isCurrentBetter) {
            unm->nmap.nmStrs[idxPos].cellRef = i;
        }
    }
}

void copyParentData(ushort netID, global CLCell *parentCell, global CLCell *cell)
{
    cell->clFitness = 0;
    cell->cellStep = 0;
    cell->nrsSize = parentCell->nrsSize;
    cell->connSize = parentCell->connSize;
    cell->clNetworkID = netID;

    for (uint k = 0; k < cell->nrsSize; k++) {
        cell->clNrs[k].clNID = k;
        cell->clNrs[k].clFRNT = parentCell->clNrs[k].clFRNT;
        cell->clNrs[k].clFired = false;
        cell->clNrs[k].clSt = 0;
        cell->clNrs[k].clPSt = 0;
        cell->clNrs[k].clExc = 0;
    }
    
    for (uint k = 0; k < cell->connSize; k++) {
        cell->clCons[k].clCnType = false;
        cell->clCons[k].clPCnType = false;
        cell->clCons[k].clFromNID = parentCell->clCons[k].clFromNID;
        cell->clCons[k].clToNID = parentCell->clCons[k].clToNID;
        cell->clCons[k].clNeuroMod = parentCell->clCons[k].clNeuroMod;
        cell->clCons[k].clWeight = parentCell->clCons[k].clWeight;
    }
}

void cellMutation(tycheIState *state, global CLCell *cell)
{
    for (int k = 0; k < STEP_MUTATION; k++) {
        structuralMutation(state, cell);
    }

    updatePrimers(cell);
    for (uint k = 0; k < cell->connSize; k++) {
        CLConnection conn = cell->clCons[k];
        weightMutation(state, &conn);
        cell->clCons[k] = conn;
    }
}

void noveltyPopulationModification(tycheIState *state, global CLUnifiedNeuralModel *unm)
{
    for (uint i = 0; i < NMSIZE; i++) {
        ushort cellRef = unm->nmap.nmStrs[i].cellRef;
        unm->nmap.nmStrs[i].cellRef = USHRT_MAX;
        
        if (cellRef == USHRT_MAX) {
            continue;
        }

        // Even if it is a parent from the novelty map or any other
        // agent, it needs to reset the fitness value
        unm->cells[cellRef].clFitness = 0;
        // This is a "hack" to signal it was selected by the novelty
        // map, because in OCL no pointers can be "swaped", therefore
        // it needs a way to let the next loop know this cell should
        // not be modified because it is a parent
        unm->cells[cellRef].cellStep = UINT_MAX;
        resetState(&(unm->cells[cellRef]));
    }

    for (uint i = 0; i < CELL_POPULATION; i++) {
        if (unm->cells[i].cellStep == UINT_MAX) {
            unm->cells[i].cellStep = 0;
            continue;
        }
        
        // Randomly choose one element from the novelty map size, because all
        // selected parents are now within the first elements in cells,
        // they can be referenced from there.
        ushort randIdx = randomUShortRange(state, 0, NMSIZE - 1);
        // Modify current cell with the values of the parent
        // it means the id the new cell will hold, mod from
        // which cell it is going to be replicated and cells[i]
        // where it is going to be modified
        copyParentData(i, &(unm->cells[randIdx]), &(unm->cells[i]));
        cellMutation(state, &(unm->cells[i]));
    }
}

kernel void spectrumDiversityEvolve(global tycheIState * restrict tSts,
                                    global CLUnifiedNeuralModel * restrict unm)
{
    tycheIState tSt[1];
    tSt[0] = tSts[0];
    
    noveltyMapParents(unm);
    noveltyPopulationModification(tSt, unm);
    
    unm->clGeneration++;
    unm->clSteps = 0;
    
    tSts[0] = tSt[0];
}

kernel void endCellEpisode(global float * restrict reward,
                           global CLUnifiedNeuralModel * restrict unm)
{
#ifdef PIPELINE
    for (ushort idx = 0; idx < CELL_POPULATION; idx++) {
#else
// Get identification details for this agent
    size_t idx = get_global_id(0);
//    size_t j = get_local_id(0);
//    size_t wg = get_local_size(0);
    {
#endif

        unm->cells[idx].clFitness += reward[idx];
        unm->cells[idx].cellStep += 1;
        
        if (unm->cells[idx].cellStep >= EPISODES_PER_AGENT) {
            unm->cells[idx].clFitness /= unm->cells[idx].cellStep;
            unm->cells[idx].cellStep = 0;
        }
        else {
            return;
        }
        
        for (uint i = 0; i < unm->cells[i].nrsSize; i++) {
            unm->cells[idx].clNrs[i].clExc = 0;
            unm->cells[idx].clNrs[i].clFired = false;
            unm->cells[idx].clNrs[i].clSt = 0;
            unm->cells[idx].clNrs[i].clPSt = 0;
        }
        
        for (uint i = 0; i < unm->cells[i].nrsSize; i++) {
            unm->cells[idx].clCons[i].clCnType = false;
            unm->cells[idx].clCons[i].clPCnType = false;
        }
    }
}
