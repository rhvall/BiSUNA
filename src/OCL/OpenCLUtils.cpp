//
//  OpenCLUtils.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 15/5/19.
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

#include "OpenCLUtils.hpp"
#include <cstdarg>

OCLRuntime::OCLRuntime(cl_device_type devType, const string &folder, const vector<string> &clFiles, string extraFlags, bool profileDevice)
{
    cl_int err;
    cl_uint platformCount;
    cl_platform_id *platforms;
    cl_uint deviceCount;
    cl_device_id *devices;
    cl_device_id device = NULL;
    cl_device_type rtDevType;
    /* Identify all platforms */
    err = clGetPlatformIDs(0, NULL, &platformCount);
    oclCheckError(err, "Couldn't read platform count");
    platforms = (cl_platform_id *)malloc(sizeof(cl_platform_id) * platformCount);
    clGetPlatformIDs(platformCount, platforms, NULL);
    oclCheckError(err, "Couldn't find any platforms");
    
    for (ushortT i = 0; i < platformCount; i++) {
        /* Access all devices within a platform */
        clGetDeviceIDs(platforms[i], CL_DEVICE_TYPE_ALL, 0, NULL, &deviceCount);
        devices = (cl_device_id *)malloc(sizeof(cl_device_id) * deviceCount);
        err = clGetDeviceIDs(platforms[i], CL_DEVICE_TYPE_ALL, deviceCount, devices, NULL);
        oclCheckError(err, "Couldn't find any devices");
        for (ushortT j = 0; j < deviceCount; j++) {
            clGetDeviceInfo(devices[j], CL_DEVICE_TYPE, sizeof(cl_device_type), &rtDevType, NULL);
            profileDevice ? OpenCLUtils::displayCLDevice(devices[j]) : void();
            
            if (devType == rtDevType) {
                device = devices[j];
                free(devices);
                i = platformCount + 1;
                break;
            }
        }
    }
    
    if (device == NULL) {
        printf("No OpenCL device of the requested type could be found in this system. Change configuration and run again\n");
        exit(1);
    }
    
    /* Create the context */
    ctx = clCreateContext(NULL, 1, &device, NULL, NULL, &err);
    oclCheckError(err, "Couldn't create a context");
    
    /* Create a CL command queue for the device*/
    uint enableProfiling = profileDevice ? CL_QUEUE_PROFILING_ENABLE : 0;
    queue = clCreateCommandQueue(ctx, device, enableProfiling, &err);
    oclCheckError(err, "Couldn't create the command queue");
    
    if (devType == CL_DEVICE_TYPE_ACCELERATOR) {
        prg = OpenCLUtils::readBinProgram(folder, clFiles, ctx, device);
    }
    else {
        prg = OpenCLUtils::compileProgram(folder, clFiles, ctx, extraFlags);
    }
    
    free(platforms);
}

OCLRuntime::~OCLRuntime()
{
    clReleaseProgram(prg);
    clReleaseCommandQueue(queue);
    clReleaseContext(ctx);
}

// Interesting example: https://gist.github.com/tzutalin/51a821f15a735024f16b
void OpenCLUtils::displayCLDevice(cl_device_id device)
{
    printf(" ----------------------------------\n");
    
    char deviceName[256];
    clGetDeviceInfo(device, CL_DEVICE_NAME, sizeof(deviceName), &deviceName, NULL);
    printf("  CL_DEVICE_NAME:\t\t\t\t\t%s\n", deviceName);
    
    char version[128];
    clGetDeviceInfo(device, CL_DEVICE_VERSION, sizeof(char) * 128, version, NULL);
    printf("  CL_DEVICE_VERSION:\t\t\t\t%s\n", version);
    
    cl_uint compute_units;
    clGetDeviceInfo(device, CL_DEVICE_MAX_COMPUTE_UNITS, sizeof(compute_units), &compute_units, NULL);
    printf("  CL_DEVICE_MAX_COMPUTE_UNITS:\t\t%u\n", compute_units);
    
    size_t workitem_dims;
    clGetDeviceInfo(device, CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS, sizeof(workitem_dims), &workitem_dims, NULL);
    printf("  CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS:%ld\n", workitem_dims);
    
    size_t workitem_size[3];
    clGetDeviceInfo(device, CL_DEVICE_MAX_WORK_ITEM_SIZES, sizeof(workitem_size), &workitem_size, NULL);
    printf("  CL_DEVICE_MAX_WORK_ITEM_SIZES:\t%ld / %ld / %ld \n", workitem_size[0], workitem_size[1], workitem_size[2]);

    size_t workgroupSize;
    clGetDeviceInfo(device, CL_DEVICE_MAX_WORK_GROUP_SIZE, sizeof(workgroupSize), &workgroupSize, NULL);
    printf("  CL_DEVICE_MAX_WORK_GROUP_SIZE:\t%ld\n", workgroupSize);

    cl_ulong max_mem_alloc_size;
    clGetDeviceInfo(device, CL_DEVICE_MAX_MEM_ALLOC_SIZE, sizeof(max_mem_alloc_size), &max_mem_alloc_size, NULL);
    printf("  CL_DEVICE_MAX_MEM_ALLOC_SIZE:\t\t%u MByte\n", (unsigned int)(max_mem_alloc_size / (1024 * 1024)));

    cl_ulong memSize;
    clGetDeviceInfo(device, CL_DEVICE_GLOBAL_MEM_SIZE, sizeof(memSize), &memSize, NULL);
    printf("  CL_DEVICE_GLOBAL_MEM_SIZE:\t\t%u MByte\n", (unsigned int)(memSize / (1024 * 1024)));

    clGetDeviceInfo(device, CL_DEVICE_LOCAL_MEM_SIZE, sizeof(memSize), &memSize, NULL);
    printf("  CL_DEVICE_LOCAL_MEM_SIZE:\t\t\t%u KByte\n", (unsigned int)(memSize / 1024));
    
    size_t timeRes;
    clGetDeviceInfo(device, CL_DEVICE_PROFILING_TIMER_RESOLUTION, sizeof(timeRes), &timeRes, NULL);
    printf("  CL_DEVICE_PROFILING_TIMER_RESOLUTION:\t%lu ns\n", timeRes);
    
    printf(" ----------------------------------\n");
}

void OpenCLUtils::displayKernelInfo(cl_kernel kernel, cl_context ctx)
{
    printf(" ----------------------------------\n");
    
    cl_device_id device;
    clGetContextInfo(ctx, CL_CONTEXT_DEVICES, sizeof(device), &device, NULL);
    
    size_t wgSize;
    clGetKernelWorkGroupInfo(kernel, device, CL_KERNEL_WORK_GROUP_SIZE, sizeof(wgSize), &wgSize, NULL);
    printf("  CL_KERNEL_WORK_GROUP_SIZE:\t\t%ld\n", wgSize);
    
    size_t wgMultiple;
    clGetKernelWorkGroupInfo(kernel, device, CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE, sizeof(wgMultiple), &wgMultiple, NULL);
    printf("  CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE:%ld\n", wgMultiple);
    
    cl_ulong localUsage;
    clGetKernelWorkGroupInfo(kernel, device, CL_KERNEL_LOCAL_MEM_SIZE, sizeof(localUsage), &localUsage, NULL);
    printf("  CL_KERNEL_LOCAL_MEM_SIZE:\t\t\t%lld\n", localUsage);
    
    cl_ulong privUsage;
    clGetKernelWorkGroupInfo(kernel, device, CL_KERNEL_PRIVATE_MEM_SIZE, sizeof(privUsage), &privUsage, NULL);
    printf("  CL_KERNEL_PRIVATE_MEM_SIZE:\t\t%lld\n", privUsage);
    
    printf(" ----------------------------------\n");
}

cl_program OpenCLUtils::readBinProgram(const string &folder, vector<string>clFiles, cl_context ctx, cl_device_id device)
{
    if (clFiles.size() > 1) {
        printf("Only one binary file is supported. Finishing execution");
        exit(1);
    }
    
    string fwn = folder;
    fwn.append(clFiles[0]);
    auto res = loadFile(fwn.c_str(), true);
    cl_int err;
    cl_int binSt;
    cl_program pgr = clCreateProgramWithBinary(ctx, 1, &device, &(res.second),
                                                (const unsigned char **)&(res.first), &binSt, &err);

    oclCheckError(err, "Failed to create program with binary file");
    oclCheckError(binSt, "Failed to load binary for device");
    
    delete [] res.first;
    
    err = clBuildProgram(pgr, 0, NULL, "", NULL, NULL);
    oclCheckError(err, "Failed to build binary program");
    
    return pgr;
}

/* Read program file and place content into buffer */
cl_program OpenCLUtils::compileProgram(const string &folder, vector<string>clFiles, cl_context ctx, string extraFlags)
{
    cl_uint filesSize = static_cast<cl_uint>(clFiles.size());
    vector<char *>vecBuffer;
    vector<size_t>vecSizes;
    cl_int err;
    for (string clName : clFiles) {
        string fwn = folder;
        fwn.append(clName);
        FILE *program_handle = fopen(fwn.c_str(), "r");;
        if(program_handle == NULL) {
            printf("Couldn't find the program file: %s \n", fwn.c_str());
            exit(1);
        }
    
        fseek(program_handle, 0, SEEK_END);
        size_t program_size = ftell(program_handle);
        rewind(program_handle);
        char *program_buffer = (char *)malloc(program_size + 1);
        program_buffer[program_size] = '\0';
        fread(program_buffer, sizeof(char), program_size, program_handle);
        fclose(program_handle);
        vecBuffer.push_back(program_buffer);
        vecSizes.push_back(program_size);
    }
    
    /* Create program from file */
    cl_program program = clCreateProgramWithSource(ctx, filesSize,
                            (const char**)vecBuffer.data(), vecSizes.data(), &err);
    oclCheckError(err, "Couldn't create the program");
    
    for (char *pgrBuff : vecBuffer) {
        free(pgrBuff);
    }
    
    /* Build program */
    string folderFlag = "-I" + folder + " ";
    string flags = "-cl-finite-math-only -cl-no-signed-zeros ";
    
#ifdef CONTINUOUS_PARAM
    extraFlags += " -DCONTINUOUS_PARAM";
#endif
    
#ifdef UNIT_TEST
    extraFlags += " -DPRECISION";
#endif
    
    string options = flags + folderFlag + extraFlags;
    cl_device_id device[1];
    clGetContextInfo(ctx, CL_CONTEXT_DEVICES, sizeof(device), device, NULL);
    err = clBuildProgram(program, 1, device, options.c_str(), NULL, NULL);
    
    if(err < 0) {
        size_t log_size;
        /* Find size of log and print to std output */
        clGetProgramBuildInfo(program, device[0], CL_PROGRAM_BUILD_LOG,
                              0, NULL, &log_size);
        char *program_log = (char *)malloc(log_size + 1);
        program_log[log_size] = '\0';
        clGetProgramBuildInfo(program, device[0], CL_PROGRAM_BUILD_LOG,
                              log_size + 1, program_log, NULL);
        printf("%s\n", program_log);
        free(program_log);
        exit(1);
    }
    
    return program;
}

cl_kernel OpenCLUtils::loadKernel(cl_program prg, const char *krlName)
{
    cl_int err;
    /* Create kernel for the mat_vec_mult function */
    cl_kernel kernel = clCreateKernel(prg, krlName, &err);
    oclCheckError(err, krlName);
    
    return kernel;
}

void OpenCLUtils::loadArgs(const vector<cl_mem> &elements, cl_kernel kernel)
{
    cl_int err;
    size_t elemSize = elements.size();
    string errMsg = "Couldn't set the kernel argument #";
    for (cl_uint i = 0; i < elemSize; i++) {
        /* Create kernel arguments from the CL buffers */
        err = clSetKernelArg(kernel, i, sizeof(cl_mem), &(elements[i]));
        oclCheckError(err, (errMsg + to_string(i)).c_str());
    }
}

void OpenCLUtils::checkError(int line, const char *file, cl_int error, const char *msg, ...) {
    // If not successful
    if(error != CL_SUCCESS) {
        // Print line and file
        printf("ERROR: ");
        oclPrintError(error);
        printf("\nLocation: %s:%d\n", file, line);
        
        // Print custom message.
        va_list vl;
        va_start(vl, msg);
        vprintf(msg, vl);
        printf("\n");
        va_end(vl);
        
        exit(error);
    }
}

// Print the error associciated with an error code
void OpenCLUtils::oclPrintError(cl_int error)
{
    // Print error message
    switch(error)
    {
        case -1:
            printf("CL_DEVICE_NOT_FOUND ");
            break;
        case -2:
            printf("CL_DEVICE_NOT_AVAILABLE ");
            break;
        case -3:
            printf("CL_COMPILER_NOT_AVAILABLE ");
            break;
        case -4:
            printf("CL_MEM_OBJECT_ALLOCATION_FAILURE ");
            break;
        case -5:
            printf("CL_OUT_OF_RESOURCES ");
            break;
        case -6:
            printf("CL_OUT_OF_HOST_MEMORY ");
            break;
        case -7:
            printf("CL_PROFILING_INFO_NOT_AVAILABLE ");
            break;
        case -8:
            printf("CL_MEM_COPY_OVERLAP ");
            break;
        case -9:
            printf("CL_IMAGE_FORMAT_MISMATCH ");
            break;
        case -10:
            printf("CL_IMAGE_FORMAT_NOT_SUPPORTED ");
            break;
        case -11:
            printf("CL_BUILD_PROGRAM_FAILURE ");
            break;
        case -12:
            printf("CL_MAP_FAILURE ");
            break;
        case -13:
            printf("CL_MISALIGNED_SUB_BUFFER_OFFSET ");
            break;
        case -14:
            printf("CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST ");
            break;
        case -30:
            printf("CL_INVALID_VALUE ");
            break;
        case -31:
            printf("CL_INVALID_DEVICE_TYPE ");
            break;
        case -32:
            printf("CL_INVALID_PLATFORM ");
            break;
        case -33:
            printf("CL_INVALID_DEVICE ");
            break;
        case -34:
            printf("CL_INVALID_CONTEXT ");
            break;
        case -35:
            printf("CL_INVALID_QUEUE_PROPERTIES ");
            break;
        case -36:
            printf("CL_INVALID_COMMAND_QUEUE ");
            break;
        case -37:
            printf("CL_INVALID_HOST_PTR ");
            break;
        case -38:
            printf("CL_INVALID_MEM_OBJECT ");
            break;
        case -39:
            printf("CL_INVALID_IMAGE_FORMAT_DESCRIPTOR ");
            break;
        case -40:
            printf("CL_INVALID_IMAGE_SIZE ");
            break;
        case -41:
            printf("CL_INVALID_SAMPLER ");
            break;
        case -42:
            printf("CL_INVALID_BINARY ");
            break;
        case -43:
            printf("CL_INVALID_BUILD_OPTIONS ");
            break;
        case -44:
            printf("CL_INVALID_PROGRAM ");
            break;
        case -45:
            printf("CL_INVALID_PROGRAM_EXECUTABLE ");
            break;
        case -46:
            printf("CL_INVALID_KERNEL_NAME ");
            break;
        case -47:
            printf("CL_INVALID_KERNEL_DEFINITION ");
            break;
        case -48:
            printf("CL_INVALID_KERNEL ");
            break;
        case -49:
            printf("CL_INVALID_ARG_INDEX ");
            break;
        case -50:
            printf("CL_INVALID_ARG_VALUE ");
            break;
        case -51:
            printf("CL_INVALID_ARG_SIZE ");
            break;
        case -52:
            printf("CL_INVALID_KERNEL_ARGS ");
            break;
        case -53:
            printf("CL_INVALID_WORK_DIMENSION ");
            break;
        case -54:
            printf("CL_INVALID_WORK_GROUP_SIZE ");
            break;
        case -55:
            printf("CL_INVALID_WORK_ITEM_SIZE ");
            break;
        case -56:
            printf("CL_INVALID_GLOBAL_OFFSET ");
            break;
        case -57:
            printf("CL_INVALID_EVENT_WAIT_LIST ");
            break;
        case -58:
            printf("CL_INVALID_EVENT ");
            break;
        case -59:
            printf("CL_INVALID_OPERATION ");
            break;
        case -60:
            printf("CL_INVALID_GL_OBJECT ");
            break;
        case -61:
            printf("CL_INVALID_BUFFER_SIZE ");
            break;
        case -62:
            printf("CL_INVALID_MIP_LEVEL ");
            break;
        case -63:
            printf("CL_INVALID_GLOBAL_WORK_SIZE ");
            break;
        default:
            printf("UNRECOGNIZED ERROR CODE (%d)", error);
    }
}

// Loads a file in binary form.
pair<unsigned char *, size_t> OpenCLUtils::loadFile(const char *filePath, bool binary)
{
    // Open the File
    FILE *fp;
    size_t fSize = 0;
    string readMode = binary ? "rb" : "r";
    fp = fopen(filePath, readMode.c_str());
    
    if(fp == 0) {
        printf("File %s could not be read, failing execution.\n", filePath);
        exit(1);
    }
    
    // Get the size of the file
    fseek(fp, 0, SEEK_END);
    fSize = ftell(fp);
    
    // Allocate space for the binary
    unsigned char *buffer = new unsigned char[fSize];
    
    // Go back to the file start
    rewind(fp);
    
    // Read the file into the binary
    if(fread((void*)buffer, fSize, 1, fp) == 0) {
        delete[] buffer;
        fclose(fp);
        printf("Buffer of file %s with size %ld could not be read, failing execution.\n", filePath, fSize);
        exit(1);
    }
    
    fclose(fp);
    
    return make_pair(buffer, fSize);
}

cl_ulong OpenCLUtils::printProfiling(const char *name, cl_event profEvent)
{
    cl_ulong timeStart, timeEnd;
    clGetEventProfilingInfo(profEvent, CL_PROFILING_COMMAND_START, sizeof(timeStart), &timeStart, NULL);
    clGetEventProfilingInfo(profEvent, CL_PROFILING_COMMAND_END, sizeof(timeEnd), &timeEnd, NULL);
    cl_ulong diffTime = (timeEnd - timeStart);
    
    if (name != NULL) {
        printf("Profiling %s: %llu ns \n", name, diffTime);
    }
    
    return diffTime;
}
