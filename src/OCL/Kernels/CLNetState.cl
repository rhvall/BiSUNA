//
//  CLNetState.cl
//  BiSUNAOpenCL
//
//  Created by RHVT on 23/7/19.
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

#include "CLNetState.h"

// idx represents the index value along the st/mod array that identifies that specific
// network module/state. If the neuron properties are required, it should reference
// using idx, ex: neuron = neurons[idx].
CLPType execute(tycheIState *tSt,
                ushort idx,
                bool ignoreIfOnlyRecurrent,
                ushort4 netSt,
                local CLNeuron *neurons,
                local CLConnection *conns,
                local CLPType *input,
                local CLPType *output)
{
    // If they are added to this array, it means they have a "FeedForward" Connection state
    ushort usedConns[ARRAY_MAX];
    int usedConnsCounter = -1;

    CLPType sum = 0;
    bool onlyRecurrentInputs = true;

    CLNeuron neuron = neurons[idx];

    //check the connections to this neuron
    //    for (ushort i = mod.connsStart; i < mod.connsEnd; i++) {
    for (ushort i = 0; i < netSt.s1; i++) {
        CLConnection conn = conns[i];

        //skip if it is not a connection to this Neuron
        if (conn.clToNID != idx) {
            continue;
        }

        //        ushort source = mod.neuronsStart + conn.clFromNID;
        ushort source = conn.clFromNID; // mod.neuronsStart

        //add this input multiplied by the weight of the connection
        //IGNORE if it comes from a Control Neuron
        ushort t = neurons[source].clFRNT;
        // ntControl = 256, ntCPrimerControl = 512,
        bool notControl = !(t & (256 | 1024));
        if (notControl) {
            CLNeuron sourceSt = neurons[source];
            ushort modulator = conn.clNeuroMod;
            //no neuro modulation
            if (modulator == OUT_INDEX) {
                CLPType cw = conn.clWeight;

                //check if they were already activated
                if (sourceSt.clFired == true) {
                    sum = neuronOpr(cw, sourceSt.clSt, sum);
                    onlyRecurrentInputs = false;
                    //marking the recurrent connection as used to be processed later on
                    //because we still do not know if this neuron will fire
                    usedConnsCounter++;
                    usedConns[usedConnsCounter] = i;
                }
                //recurrent connection
                //case it was not activated yet, use the state from the previous iteration
                else {
                    CLPType pn = sourceSt.clPSt;

                    if (conn.clPCnType == false) { //ctRecurrent
                        sum = neuronOpr(cw, pn, sum);

                    }
                }
            }
            //with neuron modulation
            else {
                ///////////////////////////////////////////////////////////////
                //
                //    Neuron Modulation
                //
                //
                //    ----(Modulator Neuron)----
                //                 |
                //    ----(Source Neuron)---------------(This Neuron)---------
                //
                ///////////////////////////////////////////////////////////////

                /////////////// modulator neuron /////////////
                CLPType modInput = 0;
                CLPType sourceInput = 0;
                CLNeuron neuroModulator = neurons[modulator];
                CLPType ne = neuroModulator.clExc;

                //check if it is excited
                if (checkExcitationThreshold(ne)) {
                    //modulator already activated
                    if (neuroModulator.clFired == true) {
                        modInput = neuroModulator.clSt;
                    }
                    //modulator not already activated, use the state from the previous iteration
                    else {
                        modInput = neuroModulator.clPSt;
                    }
                }

                /////////////// source neuron ////////////
                //source already activated
                if (sourceSt.clFired == true) {
                    sourceInput = sourceSt.clSt;

                    //marking the recurrent connection as used to be processed later on
                    //because we still do not know if this neuron will fire
                    usedConnsCounter++;
                    usedConns[usedConnsCounter] = i;
                }
                //recurrent connection
                //source not already activated, use the state from the previous iteration
                else { // ctRecurrent;
                    sourceInput = sourceSt.clPSt;
                }

                sum = neuronOpr(modInput, sourceInput, sum);
            }
        }
    }

    // If this neuron is an input, we need to add the value from
    // the current state to the sum given that later is replaced
    if (neuron.clFRNT & 1) { // nInput
        sum += input[idx];
    }

    //In the case that the ignore_if_only_recurrent flag is set,
    //the neuron does not activate if it only has recurrent input
    //this is useful for normal "remaining neurons" (neurons that are not control, not input and not output neurons)
    if (onlyRecurrentInputs == true && ignoreIfOnlyRecurrent == true) {
        return 0;
    }

    //mark all feedback connections
    for (; usedConnsCounter >= 0; usedConnsCounter--) {
        ushort cID = usedConns[usedConnsCounter];
        conns[cID].clCnType = 1;
    }

    CLPType neuronOutput = activationFunction(tSt, neuron.clFRNT, sum);
    neurons[idx].clSt = stateActivation(neuron.clFRNT, neurons[idx].clPSt, neuronOutput);

    if (neuron.clFRNT & 2) { // nOutput
        //        ushort offset = (st.outputIdx + neuron.clNID - st.inputSize);
        ushort offset = (idx - netSt.s2);
        output[offset] = neuronOutput;
    }

    return neuronOutput;
}

void processInputNeurons(tycheIState *tSt,
                         ushort4 netSt,
                         local CLNeuron *neurons,
                         local CLConnection *conns,
                         local CLPType *input,
                         local CLPType *output)
{
    //    for (ushort idx = mod.neuronsStart; idx < mod.neuronsEnd; idx++) {
    for (ushort idx = 0; idx < netSt.s2; idx++) {
        execute(tSt, idx, false, netSt, neurons, conns, input, output);
    }

    //    for (ushort idx = mod.neuronsStart; idx < mod.neuronsEnd; idx++) {
    for (ushort idx = 0; idx < netSt.s2; idx++) {
        neurons[idx].clFired = true;
    }
}

void processOutputNeurons(tycheIState *tSt,
                          ushort4 netSt,
                          local CLNeuron *neurons,
                          local CLConnection *conns,
                          local CLPType *input,
                          local CLPType *output)
{
    for (ushort idx = netSt.s2; idx < netSt.s2 + netSt.s3; idx++) {
        if (neurons[idx].clFired == false) {
            execute(tSt, idx, false, netSt, neurons, conns, input, output);
            neurons[idx].clFired = true;
        }
    }
}

void runControlID(ushort idx,
                  ushort connSize,
                  local CLConnection *conns,
                  local CLNeuron *neuronsSt)
{
    CLPType ns = neuronsSt[idx].clSt;

    // This means no precision is necessary, that way
    // when compiling for the FPGA, it will reduce the
    // II value for this function.
#ifndef PRECISION
    // Composed of destination, modulator, clExc
    ushort3 destMod[ARRAY_MAX];
    int destModCounter = -1;

    // Check the connections from this neuron
    for (ushort i = 0; i < connSize; i++) {
        CLConnection conn = conns[i];
        // Skip if it is not a connection from this Neuron
        if (conn.clFromNID != idx) {
            continue;
        }

        ushort3 dest;
        dest.s0 = conn.clToNID;
        ushort modulator = conn.clNeuroMod;
        CLPType cw = conn.clWeight;
        dest.s2 = neuronsSt[dest.s0].clExc;
        //no neuro modulation
        if (modulator == OUT_INDEX) {
            dest.s1 = cw;
        }
        //with neuro modulation
        else {
            CLPType modulatorInput = 0;
            CLNeuron modulatorN = neuronsSt[modulator];
            CLPType neM = modulatorN.clExc;
            //check if it is excited
            if (checkExcitationThreshold(neM)) {
                bool isFired = modulatorN.clFired == true;
                modulatorInput = isFired ? modulatorN.clSt : modulatorN.clPSt;
            }

            dest.s1 = modulatorInput;
        }

        destModCounter++;
        destMod[destModCounter] = dest;
    }

    for (; destModCounter >= 0; destModCounter--) {
        ushort destination = destMod[destModCounter].s0;
        ushort cw = destMod[destModCounter].s1;
        // NOTE!! The line below creates a memory dependency, if it is replaced
        // with the one below, however, without it, calculation of excitation for
        // control neurons is not correct, specially with
//        ushort nExc = neuronsSt[destination].clExc;
        ushort nExc = destMod[destModCounter].s2;
        neuronsSt[destination].clExc = neuronOpr(cw, ns, nExc);
    }
#else
///////////////////////// NOTE //////////////////////////////////
// The code below is needed if code must match what NNetworkState
// does in its function "NNSFunction::process". The problem resides
// in the need to forward excitation values to later executions
// but that creates a data dependency that the FPGA can not handle
// correctly.
////////////////////////////////////////////////////////////////
    CLPType exc = 0;
    
    // Check the connections from this neuron
    for (ushort i = 0; i < connSize; i++) {
        CLConnection conn = conns[i];
        // Skip if it is not a connection from this Neuron
        if (conn.clFromNID != idx) {
            continue;
        }

        ushort destination = conn.clToNID;
        ushort modulator = conn.clNeuroMod;
        CLPType cw = conn.clWeight;
        CLPType nExc = neuronsSt[destination].clExc;

        //no neuro modulation
        if (modulator == OUT_INDEX) {
            exc = neuronOpr(cw, ns, nExc);
        }
        //with neuro modulation
        else {
            CLPType modulatorInput = 0;
            CLNeuron modulatorN = neuronsSt[modulator];
            CLPType neM = modulatorN.clExc;
            //check if it is excited
            if (checkExcitationThreshold(neM)) {
                bool isFired = modulatorN.clFired == true;
                modulatorInput = isFired ? modulatorN.clSt : modulatorN.clPSt;
            }

            exc = neuronOpr(modulatorInput, ns, nExc);
        }

        neuronsSt[destination].clExc = exc;
    }
////////////////////////////////////////////////////////////////
#endif
}

void processCPrimerNeurons(tycheIState *tSt,
                           ushort4 netSt,
                           local CLNeuron *neurons,
                           local CLConnection *conns,
                           local CLPType *input,
                           local CLPType *output)
{
    ushort primersRef[ARRAY_MAX];
    int primersCounter = -1;

    for (ushort idx = netSt.s2 + netSt.s3; idx < netSt.s0; idx++) {
        if (neurons[idx].clFRNT & 1024) { // ntCPrimer
            primersCounter++;
            primersRef[primersCounter] = idx;
            execute(tSt, idx, false, netSt, neurons, conns, input, output);
        }
    }

    for (int i = 0; i <= primersCounter; i++) {
        ushort idx = primersRef[i];
        neurons[idx].clFired = true;
    }

    for (int i = 0; i <= primersCounter; i++) {
        ushort idx = primersRef[i];
        runControlID(idx, netSt.s1, conns, neurons);
    }
}

void processControlNeurons(tycheIState *tSt,
                           ushort4 netSt,
                           local CLNeuron *neurons,
                           local CLConnection *conns,
                           local CLPType *input,
                           local CLPType *output)
{
    //the loop only stops when:
    //    -no Control Neuron that is excited and was not activated is found
    while (true) {
        ushort activeNeurons[ARRAY_MAX];
        int activeNeuronsCounter = -1;
        //execute all Control Neurons that are excited and not activated
        //        for (ushort idx = mod.neuronsStart; idx < mod.neuronsEnd; idx++) {
        for (ushort idx = netSt.s2 + netSt.s3; idx < netSt.s0; idx++) {
            bool isControl = neurons[idx].clFRNT & (256 | 1024); // Contol and CPrimer
            CLPType ne = neurons[idx].clExc;
            bool isExcited = checkExcitationThreshold(ne);
            bool notFired = neurons[idx].clFired == false;
            if (isControl && isExcited && notFired) {
                execute(tSt, idx, false, netSt, neurons, conns, input, output);
                activeNeuronsCounter++;
                activeNeurons[activeNeuronsCounter] = idx;
            }
        }

        //stop loop if no excited and not activated control neuron was found
        if (activeNeuronsCounter < 0) {
            return;
        }

        //set all Control Neurons as already activated and fire them
        for (ushort i = 0; i <= activeNeuronsCounter; i++) {
            ushort idx = activeNeurons[i];
            //mark as fired
            neurons[idx].clFired = true;
        }

        //Excite/Inhibit other neurons
        for (; activeNeuronsCounter >= 0; activeNeuronsCounter--) {
            ushort idx = activeNeurons[activeNeuronsCounter];
            runControlID(idx, netSt.s1, conns, neurons);
        }
    }
}

void processRemainingNeurons(tycheIState *tSt,
                             ushort4 netSt,
                             local CLNeuron *neurons,
                             local CLConnection *conns,
                             local CLPType *input,
                             local CLPType *output)
{
    ushort remainingNeuronsList[ARRAY_MAX];
    int remainingCounter = -1;

    //build the list of remaining neurons
    //    for (ushort idx = mod.neuronsStart; idx < mod.neuronsEnd; idx++) {
    for (ushort idx = netSt.s2; idx < netSt.s0; idx++) {
        ushort nType = neurons[idx].clFRNT; // neuron.clNType;
        CLPType ne = neurons[idx].clExc;
        bool notControl = !(nType & (256 | 1024)); // (ntControl | ntCPrimer));
        bool isExcited = checkExcitationThreshold(ne);
        bool notFired = neurons[idx].clFired == false;

        if (notControl && isExcited && notFired) {
            remainingCounter++;
            remainingNeuronsList[remainingCounter] = idx;
        }
    }

    if (remainingCounter < 0) {
        return;
    }

    //the loop only stops when:
    //    -no Remaining Neuron, that was excited and not activated, is found
    for (;;) {
        ushort2 activeNeurons[ARRAY_MAX];
        int activeCounter = -1;

        for (ushort tempRemainingCounter = 0; tempRemainingCounter <= remainingCounter; tempRemainingCounter++) {
            ushort idx = remainingNeuronsList[tempRemainingCounter];
            CLPType exOut = execute(tSt, idx, true, netSt, neurons, conns, input, output);

            if (remainingNeuronThreshold(exOut)) {
                activeCounter++;
                activeNeurons[activeCounter].x = idx;
                activeNeurons[activeCounter].y = tempRemainingCounter;
            }
        }

        //stop loop if no excited and not activated control neuron was found
        if (activeCounter < 0) {
            break;
        }

        //set current active Neurons as already activated and fire them
        for (; activeCounter >= 0; activeCounter--) {
            ushort nID = activeNeurons[activeCounter].x;
            //mark as fired
            neurons[nID].clFired = true;
            ushort posRemaining = activeNeurons[activeCounter].y;
            //remove activated neuron from the list of remaining neurons
            remainingNeuronsList[posRemaining] = remainingNeuronsList[remainingCounter];
            remainingCounter--;
        }
    }
}

kernel void processState(global const CLPType * restrict input,
                         global CLPType * restrict output,
                         global tycheIState * restrict tSts,
                         global CLUnifiedNeuralModel * restrict clUNM,
//                         global const ushort * restrict maxNrsCons,
                         local CLNeuron * restrict localNeurons,
                         local CLConnection * restrict localConn,
                         local CLPType * restrict localInput,
                         local CLPType * restrict localOutput)
{
// The pragma "PIPELINE" signals the kernel it should operate in a
// "single worker" mode. Otherwise it asks OCL for a global ID, which
// is asigned to the variable "i"
#ifdef PIPELINE
    size_t lID = 0;
    for (ushort gID = 0; gID < CELL_POPULATION; gID++)
#else
// Get identification details for this agent
    size_t gID = get_global_id(0);
    size_t lID = get_local_id(0);
//    size_t wg = get_local_size(0);
#endif
    {
        ushort inGOffset = gID * INPUT_SIZE;
        ushort outGOffset = gID * OUTPUT_SIZE;
        ushort inLOffset = lID * INPUT_SIZE;
        ushort outLOffset = lID * OUTPUT_SIZE;
        ushort nrsLOffset = lID; // maxNrsCons[0] * lID;
        ushort conLOffset = lID; // maxNrsCons[1] * lID;
        ushort nSize = clUNM->cells[gID].nrsSize;
        ushort cSize = clUNM->cells[gID].connSize;

//        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        tycheIState tSt = tSts[gID];

        for (ushort j = 0; j < INPUT_SIZE; j++) {
            localInput[inLOffset + j] = input[inGOffset + j];
        }

        for (ushort j = 0; j < nSize; j++) {
            localNeurons[nrsLOffset + j] = clUNM->cells[gID].clNrs[j];
        }

        for (ushort j = 0; j < cSize; j++) {
            localConn[conLOffset + j] = clUNM->cells[gID].clCons[j];
        }
        
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        
//        uint num = 5;
//        i == num ? printf("I: %i, Local Input: %i, %i\n", i, localInput[0], localInput[1]) : 0;
        
        const ushort4 localNSt = (ushort4)(nSize, cSize, INPUT_SIZE, OUTPUT_SIZE);

        processInputNeurons(&tSt, localNSt, &(localNeurons[nrsLOffset]), &(localConn[conLOffset]), &(localInput[inLOffset]), &(localOutput[outLOffset]));

        processCPrimerNeurons(&tSt, localNSt, &(localNeurons[nrsLOffset]), &(localConn[conLOffset]), &(localInput[inLOffset]), &(localOutput[outLOffset]));

        processControlNeurons(&tSt, localNSt, &(localNeurons[nrsLOffset]), &(localConn[conLOffset]), &(localInput[inLOffset]), &(localOutput[outLOffset]));

        processRemainingNeurons(&tSt, localNSt, &(localNeurons[nrsLOffset]), &(localConn[conLOffset]), &(localInput[inLOffset]), &(localOutput[outLOffset]));

        processOutputNeurons(&tSt, localNSt, &(localNeurons[nrsLOffset]), &(localConn[conLOffset]), &(localInput[inLOffset]), &(localOutput[outLOffset]));

        for (ushort j = 0; j < nSize; j++) {
            localNeurons[nrsLOffset + j].clPSt = localNeurons[nrsLOffset + j].clSt;
            localNeurons[nrsLOffset + j].clSt = 0;
            localNeurons[nrsLOffset + j].clExc = 0;
            localNeurons[nrsLOffset + j].clFired = false;
        }

        for (ushort j = 0; j < nSize; j++) {
            clUNM->cells[gID].clNrs[j] = localNeurons[nrsLOffset + j];
        }

        for (ushort j = 0; j < cSize; j++) {
            clUNM->cells[gID].clCons[j].clPCnType = localConn[conLOffset + j].clCnType;
        }

        for (ushort j = 0; j < OUTPUT_SIZE; j++) {
            output[outGOffset + j] = localOutput[outLOffset + j];
        }

        tSts[gID] = tSt;
        
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
}

// printf("NetState %v8hli\n", netState);

//FLAGS="-D CELL_POPULATION=100 -D PIPELINE -D NMSIZE=20 -D INITIALBATCH=1000 -D CHANCE_OF_CONTROL_NEURON=20 "
//FLAGS+="-D CHANCE_OF_NEUROMODULATION=10 -D CHANCE_OF_ADD_NEURON=2 -D CHANCE_OF_DEL_NEURON=2 -D CHANCE_OF_ADD_CONN=48 "
//FLAGS+="-D CHANCE_OF_DEL_CONN=48 -D CHANCE_OF_WEIGHT_MUT=50 -D STEP_MUTATION=5 -D INPUT_SIZE=2 -D OUTPUT_SIZE=3 "
//FILES=" TycheI.cl CLSupportFunctions.cl CLRandom.cl CLNetState.cl CLNetworkModule.cl CLNMap.cl CLUNM.cl  "
    
//// // Altera
//aoc -g -board=c5p -report -v -I. $FLAGS -o nsk.aocx $FILES
//
//nohup time aoc -g -board=c5p -report -v -I. $FLAGS -o nsk.aocx $FILES > AlteraCompLog.txt 2>&1 &
//aoc -c -board=c5p -report -v -I. -D CELL_POPULATION=100 -D CONTINUOUS_PARAM -o nsk CLSupportFunctions.cl FPGANetSt.cl
//aoc -c -board=c5p -report -v -I. -D CELL_POPULATION=100 -o nsk CLSupportFunctions.cl FPGANetSt.cl

// Xilinx
// # NOTE: load the settings with command: ~/sourceXilinx.sh
// nohup time xocc -c -R2 -f xilinx_vcu1525_xdma_201830_1 -I. $FLAGS -o nsk.xo merged.cl > CompileLog.txt 2>&1 &
// nohup time xocc -c -R2 -f zcu102 -I. $FLAGS -o nsk.xo merged.cl > CompileLog.txt 2>&1 &
// xocc -c -R2 -f xilinx_vcu1525_xdma_201830_1 -I. $FLAGS -o nsk.xo merged.cl $FILES
// xocc -c -R2 -f zcu102 -I. $FLAGS -o nsk.xo $FILES
// xocc -c --platform xilinx_u280_xdma_201910_1 -o nsk.xo
// v++ -c -f xilinx_u280_xdma_201920_1 -o nsk.xo $FLAGS $FILES
// v++ -c -f xilinx_u280_xdma_201910_1 -o nsk.xo $FLAGS merged.cl
// xocc -c --platform xilinx_u280_xdma_201910_1 CLNSK.cl -o nsk.xo
// xocc -t hw -l -g --platform xilinx_u280_xdma_201910_1 -o nsk.xclbin nsk.xo
// xocc -t hw -l -g --platform xilinx_vcu1525_xdma_201830_1 -o nsk.xclbin nsk.xo

// xocc -t hw -l -g --platform xilinx_vcu1525_xdma_201830_1 -o nsk.xclbin nsk.xo
// nohup time xocc -t hw -l -g --platform xilinx_vcu1525_xdma_201830_1 -o nsk.xclbin nsk.xo > LinkLog.txt 2>&1 &
// nohup time xocc -t hw -l -g --platform zcu102 -o nsk.xclbin nsk.xo > LinkLog.txt 2>&1 &
// nohup time v++ -t hw -l -g -f xilinx_u280_xdma_201920_1 -o nsk.xclbin nsk.xo > LinkLog.txt 2>&1 &
