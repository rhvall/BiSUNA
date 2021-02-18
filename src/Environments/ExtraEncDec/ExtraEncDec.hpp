//
//  ExtraEncDec.hpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 7/2/20.
//  Copyright © 2020 R. All rights reserved.
//

#ifndef ExtraEncDec_hpp
#define ExtraEncDec_hpp

#include "Environments/ReinforcementEnvironment.hpp"

struct ExtraEncDec: public ReinforcementEnvironment
{
    ExtraEncDec(ushortT eID, const char *fileName);
    ~ExtraEncDec();
    
    string EED;
    string inputFile;
    string outFolder;
    string outFileName;
    bool outputEncDec;
    bool isBMP;
    bool storePass;
    string encryptorFile;
    string decryptorFile;
    int maxPopulation;
    bool outputAES;
    string aesPassword;
    bool outputBlockAES;
    vector<string> outputDOT;
    
    void start(int &numObsVars, int &numActionVars) {};
    float step(ParameterType *action) {return 0;};
    float step(ParameterVector action) {return 0;};
    float restart() {return 0;};
    
    static void runEncDec(ExtraEncDec eed);
    static uint binEncDec(ExtraEncDec eed);
    static uint bmpEncDec(ExtraEncDec eed);
    static void binAESEncryption(const string &path, unsigned char key[], const string outputPath, const uint &stepSize = 0);
    static void bmpAESEncryption(const char *path, unsigned char key[], const string outputPath, const uint &stepSize = 0);
    static tuple<vector<ParameterVector>, vector<ParameterVector>, uint> encryptDecrypt(ExtraEncDec eed, const ParameterVector &payload);
//    static float ExtraEncDecBlock(int argc, const char * argv[]);s
    static void unmToDOT(string fileName, string outFolder);
};

#endif /* ExtraEncDec_hpp */
