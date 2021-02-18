//
//  NNetworkExtra.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 27/6/19.
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

#ifndef NNetworkExtra_hpp
#define NNetworkExtra_hpp

#include <fstream>
#include "RLAgent/UnifiedNeuralModel.hpp"

struct NNExFunction
{
    static void checkRemove(const char *fName);
    static bool checkFile(const char *fName);
    static void writeNetworkModule(const NNetworkModule *mod, ofstream &fileStrm);
    static void readNetworkModule(ifstream &fileStrm, NNetworkModule *mod);
    static NNetworkModule loadNetworkModule(const char *filename);
    static bool saveNetworkModule(const NNetworkModule &mod, const char *filename);
    static void writeNetworkState(const NNetworkState *nSt, ofstream &fileStrm);
    static void readNetworkState(ifstream &fileStrm, NNetworkState *nSt);
//    static void write(const  *cell, ofstream &fileStrm);
//    static void read(ifstream &fileStrm,  *cell);
    static void writeUNMCell(const UNMCell *cell, ofstream &fileStrm);
    static void readUNMCell(ifstream &fileStrm, UNMCell *cell);
    static void writeNoveltyMap(const NNoveltyMap *nmap, ofstream &fileStrm);
    static void readNoveltyMap(ifstream &fileStrm, NNoveltyMap *nmap);
    static void writeUNM(const UnifiedNeuralModel *model, ofstream &fileStrm);
    static void readUNM(ifstream &fileStrm, UnifiedNeuralModel *model);
    static bool writeBiSUNAModel(const UnifiedNeuralModel *model, const char *fileName);
    static void readBiSUNAModel(const char *fileName, UnifiedNeuralModel *model);
    static string appendTimeStamp(const string &name);
    static string appendSuffixString(const string &name, const string &suffix);
    static vector<string> allFilesInFolder(string folder);
    static void removeOrphans(UNMCell *cell);
    static void printGraph(const char *filename, NNetworkModule *module);
    static bool writeToBinFile(const string &filePath, const ParameterVector &payload);
    static ParameterVector readFromBinFile(const string &filePath);
};
#endif /* NNetworkExtra_hpp */
