//
//  OpenCLUtils.hpp
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

#ifndef OpenCLUtils_hpp
#define OpenCLUtils_hpp

#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <Parameters.hpp>
#include <string>

#if defined(__APPLE__) || defined(__MACOSX)
    #include <OpenCL/opencl.h>
#else
    #include <CL/cl.h>
#endif

#define oclCheckError(status, ...) OpenCLUtils::checkError(__LINE__, __FILE__, status, __VA_ARGS__)

struct OCLRuntime
{
    cl_context ctx;
    cl_command_queue queue;
    cl_program prg;
    
    OCLRuntime(cl_device_type devType, const string &folder, const vector<string> &clFiles, string extraFlags = "", bool profileDevice = false);
    ~OCLRuntime();
};

struct OpenCLUtils {
    static void displayCLDevice(cl_device_id device);
    static void displayKernelInfo(cl_kernel kernel, cl_context ctx);
    static cl_program readBinProgram(const string &folder, vector<string>clFiles, cl_context ctx, cl_device_id device);
    static cl_program compileProgram(const string &folder, vector<string>clFiles, cl_context ctx, string extraFlags = "");
    static cl_kernel loadKernel(cl_program prg, const char *krlName);
    static void loadArgs(const vector<cl_mem> &elements, cl_kernel kernel);
    static void oclPrintError(cl_int error);
    static void checkError(int line, const char *file, cl_int error, const char *msg, ...); // does not return
    static pair<unsigned char *, size_t> loadFile(const char *filePath, bool binary = false);
    static cl_ulong printProfiling(const char *name, cl_event profEvent);
};

#endif /* OpenCLUtils_hpp */
