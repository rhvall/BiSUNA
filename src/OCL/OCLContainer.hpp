//
//  OCLContainer.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 18/8/19.
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

#ifndef OCLContainer_hpp
#define OCLContainer_hpp

#include "OCLBridge.hpp"

template <typename T>
void readOrWriteCLBuffer(cl::CommandQueue queue, cl::Buffer rwBuffer, size_t rwSize, T *rwOutput,
                         bool readBuffer = true,
                         bool profiling = false,
                         function<void(double diffTask)> profFn = NULL)
{
    cl_int err;
    size_t buffSize = rwSize; // * sizeof(T);
    if (profiling) {
        cl::Event profRW;
        if (readBuffer == true) {
            err = queue.enqueueReadBuffer(rwBuffer, CL_TRUE, 0, buffSize, NULL, NULL, &profRW);
        }
        else {
            err = queue.enqueueWriteBuffer(rwBuffer, CL_TRUE, 0, buffSize, rwOutput, NULL, &profRW);
        }
        
        oclCheckError(err, "Couldn't enqueue the read/write buffer output command with profile");

        if (profFn == NULL) {
            OpenCLUtils::printProfiling("rwBufferIndex", profRW);
        }
        else {
            double opt = OpenCLUtils::printProfiling(NULL, profRW);
            profFn(opt);
        }
    }
    else {
        if (readBuffer == true) {
            err = queue.enqueueReadBuffer(rwBuffer, CL_TRUE, 0, buffSize, rwOutput);
        }
        else {
            err = queue.enqueueWriteBuffer(rwBuffer, CL_TRUE, 0, buffSize, rwOutput);
        }
        oclCheckError(err, "Couldn't enqueue the read/write buffer output command");
    }
}

struct OCLContainer
{
    static const uint MAX_CU_KERNELS = 16;
    CLUnifiedNeuralModel *clUNM = NULL;
    OCLRuntime *oclRt = NULL;
    cl_device_type devType = CL_DEVICE_TYPE_CPU;
    cl::Kernel kernelState[MAX_CU_KERNELS];// = NULL;
    cl::Kernel kernelEpisode;
    bool kernelEpisodeEnabled = false;
    cl::Kernel kernelEvolve;
    bool kernelEvolvedEnabled = false;
    cl::Buffer unmBuffer;
    CLCell *cellBufferMap = NULL;
    cl::Buffer tycheIBuffer;
    ParameterType *inRef = NULL;
    cl::Buffer inBuffer;
    ushortT inBuffSize = 0;
    ParameterType *outRef = NULL;
    cl::Buffer outBuffer;
    ushortT outBuffSize = 0;
    float *rewardsRef = NULL;
    cl::Buffer rewardsBuffer;
    ushortT rewardsBuffSize = 0;
    bool enableProfiling = false;
    size_t localWorkers = 1;
    bool krnStateLcl = true;
    long computeUnits = 0;
    
    OCLContainer(PConfig *pConf, UnifiedNeuralModel *unm, OCLRuntime *oclRuntime);
    ~OCLContainer();
    
    void exeOCL(cl::Kernel kernel, function<void(double diffTask)> profFn = NULL);
    void loadParametersKrnState(uint kernelIndex = 0, int start = -1, int end = -1);
    void loadParametersKrnEpisode();
    void loadParametersKrnEvolve();
    
    static cl::Buffer randomizeTycheI(cl::Context ctx, size_t population);
    
private:
    void loadParametersKrnStateGbl(uint kernelIndex = 0, int start = -1, int end = -1);
};

#endif /* OCLContainer_hpp */
