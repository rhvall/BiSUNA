//
//  OCLContainer.cpp
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

#include "OCLContainer.hpp"

// Make sure that the input pointer remains contant while the kernel executes
// that avoids the need to reallocate the argument when OCL executes the kernel
OCLContainer::OCLContainer(void *input, UnifiedNeuralModel *unm, OCLRuntime *oclRuntime, const char *krnName, cl_device_type paramDT)
{
    // Create OCLRuntime
    PConfig *pConf = PConfig::globalProgramConfiguration();
    string path = pConf->kernelFolder().c_str();
    vector<string> oclFiles = pConf->oclFiles();
    
    cl_device_type dt;
    
    if (paramDT == CL_DEVICE_TYPE_ALL) {
        dt = pConf->deviceType();
    }
    else {
        dt = paramDT;
    }
    
    if (oclRuntime == NULL) {
        enableProfiling = pConf->oclProfiling();
        string popFlag = "-DPOPULATION=" + to_string(unm->config.unmPopulation);
        oclRt = new OCLRuntime(dt, path, oclFiles, popFlag, enableProfiling);
    }
    else {
        oclRt = oclRuntime;
    }
    
    kernel = OpenCLUtils::loadKernel(oclRt->prg, krnName);
    enableProfiling ? OpenCLUtils::displayKernelInfo(kernel, oclRt->ctx) : void();
    
    // Create IO Buffers
    ushortT vecSize = unm->config.unmPopulation;
    ushortT inputLength = unm->config.unmObs;
    ushortT inputSize = inputLength * vecSize;
    ushortT outputLength = unm->config.unmActions;
    ushortT outputSize = outputLength * vecSize;
    
    cl_int err = 0;
    inBuffSize = sizeof(ParameterType) * inputSize;
    inRef = input;
    inBuffer = clCreateBuffer(oclRt->ctx, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR,
                              inBuffSize, input, &err);
    oclCheckError(err, "Couldn't create a buffer object for Input");
    
    outBuffSize = sizeof(ParameterType) * outputSize;
    outBuffer = clCreateBuffer(oclRt->ctx, CL_MEM_WRITE_ONLY, outBuffSize, NULL, &err);
    oclCheckError(err, "Couldn't create a buffer object");
    
    reallocateUNM(unm);
};

OCLContainer::~OCLContainer()
{
    clReleaseKernel(kernel);
    clReleaseMemObject(inBuffer);
    clReleaseMemObject(outBuffer);
    delete memUNM;
    
    if (oclRt != NULL) {
        delete oclRt;
        oclRt = NULL;
    }
}

vector<ParameterType> OCLContainer::exeOCL(size_t workUnits, function<void(double diffTask, double diffOutput)> profFn)
{
    cl_int err;
    vector<ParameterType> output(outBuffSize / sizeof(ParameterType));
    
    if (enableProfiling) {
        cl_event profTask;
        cl_event profRead;
        
        /* Enqueue the command queue to the device */
        if (workUnits > 0) {
            err = clEnqueueNDRangeKernel(oclRt->queue, kernel, 1, NULL, &workUnits,
                                         NULL, 0, NULL, &profTask);
            oclCheckError(err, "Couldn't enqueue the kernel execution command");
        }
        else {
            err = clEnqueueTask(oclRt->queue, kernel, 0, NULL, &profTask);
            oclCheckError(err, "Couldn't call kernel with execution command enqueue task");
        }
        
        err = clEnqueueReadBuffer(oclRt->queue, outBuffer, CL_TRUE, 0, outBuffSize,
                                  output.data(), 0, NULL, &profRead);
        oclCheckError(err, "Couldn't enqueue the read buffer output command");
        
        if (profFn == NULL) {
            OpenCLUtils::printProfiling("exeOCL", profTask);
            OpenCLUtils::printProfiling("OCL-Output", profRead);
        }
        else {
            double tsk = OpenCLUtils::printProfiling(NULL, profTask);
            double opt = OpenCLUtils::printProfiling(NULL, profRead);
            profFn(tsk, opt);
        }
    }
    else {
        if (workUnits > 0) {
            /* Enqueue the command queue to the device */
            err = clEnqueueNDRangeKernel(oclRt->queue, kernel, 1, NULL, &workUnits,
                                         NULL, 0, NULL, NULL);
            oclCheckError(err, "Couldn't enqueue the kernel execution command");
        }
        else {
            err = clEnqueueTask(oclRt->queue, kernel, 0, NULL, NULL);
            oclCheckError(err, "Couldn't call kernel with execution command enqueue task");
        }
        
        err = clEnqueueReadBuffer(oclRt->queue, outBuffer, CL_TRUE, 0, outBuffSize,
                                  output.data(), 0, NULL, NULL);
        oclCheckError(err, "Couldn't enqueue the read buffer output command");
    }
    
    return output;
}

void OCLContainer::reallocateUNM(UnifiedNeuralModel *unm)
{
    vector<cl_mem>clElems;
    clElems.reserve(6);
    cl_int err;
    CLUNM clUNM = OCLBridge::toCLUNM(*unm);
    
    if (memUNM != NULL) {
        delete memUNM;
    }
    
    clElems.push_back(inBuffer);
    clElems.push_back(outBuffer);
    
    memUNM = new CLUNMMem(oclRt->ctx, clUNM);
    
    clElems.push_back(memUNM->memSt);
    clElems.push_back(memUNM->memNeurons);
    clElems.push_back(memUNM->memConns);
    
    OpenCLUtils::loadArgs(clElems, kernel);
    
    ushortT maxConns = 0;
    ushortT maxNeurons = 0;
    
    for (UNMCell *cell : unm->cells) {
        if (cell->netMod->nNeurons.size() > maxNeurons) {
            maxNeurons = cell->netMod->nNeurons.size();
        }
        
        if (cell->netMod->nConns.size() > maxConns) {
            maxConns = cell->netMod->nConns.size();
        }
    }
    
    uintT clElemsSize = (uintT)clElems.size();
    err = clSetKernelArg(kernel, clElemsSize, maxNeurons * sizeof(CLNeuron), NULL);
    oclCheckError(err, "Error setting kernel parameter CLNeuronState");
    err = clSetKernelArg(kernel, clElemsSize + 1, maxConns * sizeof(CLConnection), NULL);
    oclCheckError(err, "Error setting kernel parameter CLConnection");
    err = clSetKernelArg(kernel, clElemsSize + 2, unm->config.unmObs * sizeof(ParameterType), NULL);
    oclCheckError(err, "Error setting kernel parameter local input");
    err = clSetKernelArg(kernel, clElemsSize + 3, unm->config.unmActions * sizeof(ParameterType), NULL);
    oclCheckError(err, "Error setting kernel parameter local output");
}
