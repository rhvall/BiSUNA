//
//  CLSupportFunctions.h
//  BiSUNAOpenCL
//
//  Created by RHVT on 23/8/19.
//  Copyright © 2019 R. All rights reserved.
//

// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

#ifndef CLSupportFunctions_h
#define CLSupportFunctions_h

#include "CLNetworkStruct.h"

#define EXCITATION_THRESHOLD_BITS 4 // Used only in the binary part, but redefined here for compilation purposes
#define HALF_WEIGHT 255
#define ARRAY_MAX 128
#define OUT_INDEX USHRT_MAX

CLPType activationFunction(ushort nt, CLPType weightedInput);
bool checkExcitationThreshold(CLPType ne);
CLPType betaOfFiringRate(ushort fr);
CLPType stateActivation(ushort nFR, CLPType prevSt, CLPType neuronOutput);
bool remainingNeuronThreshold(CLPType output);
CLPType neuronOpr(CLPType a, CLPType b, CLPType c);

#endif /* CLSupportFunctions_h */
