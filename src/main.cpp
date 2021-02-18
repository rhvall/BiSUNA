//
//  main.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 6/5/19.
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

#define CL_SILENCE_DEPRECATION

#include <time.h>
#include <stdio.h>
#include "NN/NNetwork.hpp"

int main (int argc, const char * argv[])
{
//// If it is neccessary to know where the binary is executing from:
//    std::string argv_str(argv[0]);
//    std::string base = argv_str.substr(0, argv_str.find_last_of("/"));
//    printf("Location: %s\n", base.c_str());
    
    uintT time0 = static_cast<unsigned int>(time(NULL));
    
    float result = NNFunction::mainBiSUNA(argv[1]);
    
    uintT time1 = static_cast<unsigned int>(time(NULL));
    uintT timeDiff = time1 - time0;
    
    printf("TimeDiff: %i secs\n", timeDiff);
    printf("Last best score: %f\n", result);
        
    return 0;
}

