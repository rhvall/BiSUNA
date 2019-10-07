//
//  OCLContainer.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 18/8/19.
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

#ifndef OCLContainer_hpp
#define OCLContainer_hpp

#include "OCLBridge.hpp"

struct OCLContainer
{
    OCLRuntime *oclRt = NULL;
    CLUNMMem *memUNM = NULL;
    cl_kernel kernel;
    void *inRef = NULL;
    cl_mem inBuffer;
    ushortT inBuffSize;
    cl_mem outBuffer;
    ushortT outBuffSize;
    bool enableProfiling = false;
    OCLContainer(void *input, UnifiedNeuralModel *unm, OCLRuntime *oclRuntime = NULL,
                 const char *krnName = "process", cl_device_type paramDT = CL_DEVICE_TYPE_ALL);
    ~OCLContainer();
    
    vector<ParameterType> exeOCL(size_t workUnits = 0, function<void(double diffTask, double diffOutput)> profFn = NULL);
    void reallocateUNM(UnifiedNeuralModel *unm);
};

#endif /* OCLContainer_hpp */
