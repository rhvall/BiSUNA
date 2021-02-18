//
//  OpenCLUtils.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 15/5/19.
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

#ifndef OpenCLUtils_hpp
#define OpenCLUtils_hpp

#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <Parameters.hpp>
#include <string>

#if defined(__APPLE__) || defined(__MACOSX)
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
    #include <OpenCL/cl.hpp>
// NOTE!! if this does not compile, it requires to add the "C++" bindings:
// https://rageandqq.github.io/blog/2018/03/09/opencl-mac-cpp.html
// https://github.com/KhronosGroup/OpenCL-CLHPP
// curl https://raw.githubusercontent.com/KhronosGroup/OpenCL-Registry/master/api/2.1/cl.hpp > cl.hpp
// sudo cp cl.hpp /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/OpenCL.framework/Versions/A/Headers
// sudo mv cl.hpp /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks/OpenCL.framework/Headers/
#else
    #include <CL/cl.hpp>
// In case the Linux distribution does not include cl.hpp, below are the steps to download it    
// curl https://raw.githubusercontent.com/KhronosGroup/OpenCL-Registry/master/api/2.1/cl.hpp > cl.hpp
// sudo mv cl.hpp /usr/include/CL/
#endif

#define oclCheckError(status, ...) OpenCLUtils::checkError(__LINE__, __FILE__, status, __VA_ARGS__)

struct OCLRuntime
{
    cl::Context ctx;
    cl::Device device;
    cl::CommandQueue queue;
    cl::Program prg;
    
    OCLRuntime(cl_device_type devType, const string &folder, const vector<string> &clFiles, string extraFlags = "", bool profileDevice = false);
    ~OCLRuntime();
};

struct OpenCLUtils {
    static void displayCLDevice(cl::Device device);
    static void displayKernelInfo(cl::Kernel kernel, cl::Device device);
    static cl::Program readBinProgram(const string &folder, vector<string>clFiles, cl::Context ctx, cl::Device device);
    static cl::Program compileProgram(const string &folder, vector<string>clFiles, cl::Context ctx, cl::Device device, string extraFlags = "");
    static cl::Kernel loadKernel(cl::Program prg, const char *krlName);
    static void loadArgs(const vector<cl::Buffer> &elements, cl::Kernel kernel);
    static void oclPrintError(cl_int error);
    static void checkError(int line, const char *file, cl_int error, const char *msg, ...); // does not return
    static pair<unsigned char *, size_t> loadFile(const char *filePath, bool binary = false);
    static cl_ulong printProfiling(const char *name, cl::Event profEvent);
    
    static cl::Buffer clBufferCreation(cl::Context ctx, size_t memSize, cl_mem_flags flags, void *dta = NULL);
    static cl::Buffer clSubBufferCreation(cl::Buffer mainBff, size_t memOrigin, size_t memSize, cl_mem_flags flags);
    static void *clBufferMap(cl::CommandQueue clQ, cl::Buffer memPtr, size_t memSize, cl_map_flags flags);
};

#endif /* OpenCLUtils_hpp */
