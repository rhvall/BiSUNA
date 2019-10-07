//
//  main.cpp
//  TestOpenCL
//
//  Created by RHVT on 6/5/19.
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

#define CL_SILENCE_DEPRECATION

#include <time.h>
#include <stdio.h>
#include "NN/NNetwork.hpp"

int main (int argc, const char * argv[])
{
    uintT time0 = static_cast<unsigned int>(time(NULL));
    
    float result = NNFunction::mainBiSUNA(argv[1]);
    
    uintT time1 = static_cast<unsigned int>(time(NULL));
    uintT timeDiff = time1 - time0;
    
    printf("TimeDiff: %i secs\n", timeDiff);
    printf("Last best score: %f\n", result);
        
    return 0;
    // runThreads();
}

