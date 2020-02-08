//
//  BMPEncDec.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 7/2/20.
//  Copyright © 2020 R. All rights reserved.
//

#include "Parameters.hpp"
#include "BMPEncDec.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"
#include "NN/NNetworkExtra.hpp"
#include "BMPHandler.hpp"
#include "AES.h"
#include "SymmetricEncryption.hpp"

// NOTE!! To use this file, first import it:
//      #include "Environments/BMPEncDec/BMPEncDec.hpp"
// Then call this function:
//      float result = BMPEncDec::bmpEncDec(argc, argv);
// It will require some values to be passed on execution.

ParameterVector bmpPayload(const uintT &idx, const vector<uint8_t> &arr, const uintT &size, const ParameterVector &pass)
{
    uintT counter = idx;
    ulongT passSize = pass.size();
    ParameterVector payload(size);
    payload.insert(payload.begin(), pass.begin(), pass.end());
    
    for (ulongT i = passSize; i < passSize + size; i++) {
        ushortT joined = arr[counter++];
        joined = joined << 8;
        joined |= arr[counter++];
        payload[i] = joined;
    }
    
    return payload;
}

vector<uint8_t> inversebmpPayload(ParameterVector payload)
{
    vector<uint8_t> inversor;
    
    for_each(payload.begin(), payload.end(), [&inversor](ushortT val) {
        inversor.push_back(val >> 8);
        inversor.push_back(val);
    });
    
    return inversor;
}

string appendToName(const string &toAppend, const string &name)
{
    string cpName = name;
    size_t indexPoint = name.find_last_of(".");
    cpName.insert(indexPoint, toAppend);
    return cpName;
}

float BMPEncDec::bmpEncDec(int argc, const char * argv[])
{
    if (argc < 5 || argc > 6) {
        printf("This program needs 5 elements:\n");
        printf("1.- Path to encryptor file\n");
        printf("2.- Path to decryptor file\n");
        printf("3.- Path to file bmp file\n");
        printf("4.- Path to output file\n");
        printf("Finishing execution now");
        return 0;
    }
    
    UNMConfig conf = UNMConfig(1, 1, 100, 1);
    UnifiedNeuralModel alice = UnifiedNeuralModel(1, conf);
    NNExFunction::readBiSUNAModel(argv[1], &alice);
    
    UnifiedNeuralModel bob = UnifiedNeuralModel(1, conf);
    NNExFunction::readBiSUNAModel(argv[2], &bob);
    
    BMPHandler bmpFile(argv[3]);
    BMPHandler bmpEnc(argv[3]);
    BMPHandler bmpDec(argv[3]);
    
    vector<uint8_t> encPayload;
    vector<uint8_t> encPlaceholder;
    vector<uint8_t> decPayload;
    vector<uint8_t> decPlaceholder;
    string outputPath(argv[4]);
    ulongT fileSize = bmpFile.data.size();
    ushortT population = alice.config.unmPopulation;
    ushortT actions = alice.config.unmActions;
    uintT stepSize = actions * 2;
    uintT sections = (uintT) fileSize / stepSize;

    vector<vector<ushortT>> pass(sections);
    uintT arrIdx = 0;
//    std::generate(pass.begin(), pass.end(), [&]{ return ++arrIdx; });
    for_each(pass.begin(), pass.end(), [&actions](ParameterVector &vec) { vec = SymmetricEncryption::randomArray(actions); });
    arrIdx = 0;
    uintT passIdx = 0;
    
    for (uintT i = 0; i < population; i++) {
        UNMCell *aliceCell = alice.cells[i];
        UNMCell *bobCell = bob.cells[i];

        while (arrIdx < fileSize) {
//            uintT maxIdx = arrIdx + actions * 2;

//            if (maxIdx > fileSize) {
//                break;
//            }

            ParameterVector alicePayload = bmpPayload(arrIdx, bmpFile.data, actions, pass[passIdx]);
            ParameterVector actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
            encPlaceholder = inversebmpPayload(actionAlice);
            encPayload.insert(encPayload.end(), encPlaceholder.begin(), encPlaceholder.end());
            actionAlice.insert(actionAlice.begin(), pass[passIdx].begin(), pass[passIdx].end());
            ParameterVector bobAction = UNMFunctions::step(0, actionAlice, bobCell);
            decPlaceholder = inversebmpPayload(bobAction);
            decPayload.insert(decPayload.end(), decPlaceholder.begin(), decPlaceholder.end());

            encPlaceholder.clear();
            decPlaceholder.clear();
            arrIdx += actions * 2;
            passIdx++;
        }

        if (encPayload.size() > bmpEnc.data.size()) {
            encPayload.resize(bmpEnc.data.size());
        }

        if (decPayload.size() > bmpDec.data.size()) {
            decPayload.resize(bmpDec.data.size());
        }

        bmpEnc.data = encPayload;
        bmpDec.data = decPayload;

        string idxStr = to_string(i);
        string encStr = appendToName("Enc" + idxStr, outputPath);
        string decStr = appendToName("Dec" + idxStr, outputPath);
        bmpEnc.write(encStr.c_str());
        bmpDec.write(decStr.c_str());

        encPayload.clear();
        decPayload.clear();
        arrIdx = 0;
        passIdx = 0;
    }
    
//------------------------------------------------
//------------- AES Full--------------------------
//------------------------------------------------
    BMPHandler bmpAES(argv[3]);
    BMPHandler bmpAESClear(argv[3]);
    unsigned char key[] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f }; //key example
    unsigned int outLen = 0;  // out param - bytes in сiphertext

    AES aes(128);  //128 - key length, can be 128, 192 or 256
    auto cypher = aes.EncryptECB(bmpAES.data.data(), (uintT)fileSize, key, outLen);
    auto clear = aes.DecryptECB(cypher, outLen, key);

    string aesStr = appendToName("AES", outputPath);
    string aesClearStr = appendToName("AESClear", outputPath);

    for (uintT i = 0; i < bmpAES.data.size(); i++) {
        bmpAES.data[i] = cypher[i];
        bmpAESClear.data[i] = clear[i];
    }

    bmpAES.write(aesStr.c_str());
    bmpAESClear.write(aesClearStr.c_str());
//------------------------------------------------
    
////------------------------------------------------
////------------- AES by blocks---------------------
////------------------------------------------------
    BMPHandler bmpAESSec(argv[3]);
    vector<uint8_t> encBuffer;
    string aesSec = appendToName("AESSections", outputPath);
//    string aesClearStr = appendToName("AESClear", outputPath);

    for (uintT i = 0; i < fileSize; i += stepSize) {
        vector<uint8_t> vecSec(bmpAESSec.data.begin() + i, bmpAESSec.data.begin() + i + stepSize);
        auto cypher = aes.EncryptECB(vecSec.data(), stepSize, key, outLen);
//        auto clear = aes.DecryptECB(cypher, outLen, key);

        for (uintT j = 0; j < stepSize; j++) {
            bmpAESSec.data[i + j] = cypher[j];
//            bmpAESClear.data[i] = clear[i];
        }
    }

    bmpAESSec.write(aesSec.c_str());
////------------------------------------------------
    
    return 0;
}
