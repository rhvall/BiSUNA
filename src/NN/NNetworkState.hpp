//
//  NNetworkState.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 27/5/19.
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

#ifndef NNetworkState_hpp
#define NNetworkState_hpp

#include "NNetworkModule.hpp"
#include <unordered_map>

struct NNetworkState
{
public:
    NNetworkState(NNetworkModule *ptrModule = nullptr);
    ~NNetworkState();
    
    vector<NNeuronState> nNSt;
    vector<NConnState> nCSt;
    unordered_map<ushortT, ParameterType> ioVal;
    NNetworkModule *module;
};

struct NNSFunction
{
    static void resetState(NNetworkState *st);
    static void processInputNeurons(const vector<ParameterType> &input, NNetworkState *netSt);
    static vector<ParameterType> processOutputNeurons(NNetworkState *netSt);
    static void processCPrimerNeurons(NNetworkState *netSt);
    static void processControlNeurons(NNetworkState *netSt);
    static void processRemainingNeurons(NNetworkState *netSt);
    static void runControlID(const ushortT controlID, const vector<NConnection> &conns, vector<NNeuronState> *neuronsSt);
    static vector<ParameterType> process(const vector<ParameterType> &input, NNetworkState *netSt);
    static ParameterType execute(const ushortT &nID, NNetworkState *netSt, const bool &ignoreIfOnlyRecurrent = false);
    static ParameterType stateActivation(const NFiringRate &nFR, const ParameterType &prevSt, const ParameterType &neuronOutput);
    static ParameterType activationFunction(const NNeuronType &nt, const ParameterType &weightedInput);
    static ParameterType betaOfFiringRate(const NFiringRate &fr);
    static bool checkExcitationThreshold(const ParameterType &ne);
    static bool remainingNeuronThreshold(const ParameterType &output);
    static ParameterType maxWeight(const ParameterType &sum);
    static void neuronOpr(const ParameterType &a, const ParameterType &b, ParameterType &c);
};
#endif /* NNetworkState_hpp */
