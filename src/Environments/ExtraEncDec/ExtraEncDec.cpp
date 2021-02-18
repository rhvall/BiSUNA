//
//  ExtraEncDec.cpp
//  BiSUNAOpenCL
//
//  Created by RHVT on 7/2/20.
//  Copyright © 2020 R. All rights reserved.
//

#include "Parameters.hpp"
#include "ExtraEncDec.hpp"
#include "RLAgent/UnifiedNeuralModel.hpp"
#include "NN/NNetworkExtra.hpp"
#include "BMPHandler.hpp"
#include "AES.h"
#include "Environments/SymmetricEncryption.hpp"
#include <cstdlib>
#include <cmath>
#include <fstream>

ExtraEncDec::ExtraEncDec(ushortT eID, const char *fileName):
    ReinforcementEnvironment(eID, fileName)
{
    trial = 0;
    maxSteps = 0;
    const string eed = "ExtraEncodeDecode";
    inputFile = ini.Get(eed, "InputFile", "");
    
    if (inputFile.size() <= 2)  {
        printf("%s configuration requires an input file path with an extension.\n", eed.c_str());
        exit(1);
    }
    
    outFolder = ini.Get(eed, "OutputFolder", "Results/");
    outFileName = ini.Get(eed, "OutputFileName", "Result.bmp");
    outputEncDec = ini.GetBoolean(eed, "OutputEncDec", false);
    isBMP = ini.GetBoolean(eed, "IsBMP", false);
    storePass = ini.GetBoolean(eed, "StorePass", false);
    encryptorFile = ini.Get(eed, "EncryptorFile", "alicesCPA.dat");
    decryptorFile = ini.Get(eed, "DecryptorFile", "bobsCPA.dat");
    maxPopulation = (int)ini.GetInteger(eed, "MaxPopulation", 0);
    outputAES = ini.GetBoolean(eed, "OutputAES", false);
    aesPassword = ini.Get(eed, "AESPassword", "38nv8731@4E");
    outputBlockAES = ini.GetBoolean(eed, "OutputBlockAES", false);
    const string outdotstr = ini.Get(eed, "OutputDOT", "");
    outputDOT = PConfig::split(outdotstr, ',');
}

ExtraEncDec::~ExtraEncDec()
{
}

void ExtraEncDec::runEncDec(ExtraEncDec eed)
{
    string outputPath = eed.outFolder + eed.outFileName;
    unsigned char *key = (unsigned char*)eed.aesPassword.c_str();
    const char *inputFile = eed.inputFile.c_str();
    uint stepSize = 0;
    
    if (eed.outputEncDec == true) {
        if (eed.isBMP) {
            stepSize = ExtraEncDec::bmpEncDec(eed);
        } else {
            stepSize = ExtraEncDec::binEncDec(eed);
        }
    }
    
    if (eed.outputAES == true) {
        if (eed.isBMP) {
            ExtraEncDec::bmpAESEncryption(inputFile, key, outputPath);
        }
        else {
            ExtraEncDec::binAESEncryption(inputFile, key, outputPath);
        }
    }
    
    if (eed.outputBlockAES == true) {
        if (stepSize != 0) {
            if (eed.isBMP) {
                ExtraEncDec::bmpAESEncryption(inputFile, key, outputPath, stepSize);
            }
            else {
                ExtraEncDec::binAESEncryption(inputFile, key, outputPath, stepSize);
            }
        }
        else {
            printf("It is necessary to enable 'OutputEncDec' to obtain the number of steps\n");
        }
    }
    
    if (eed.outputDOT.size() > 0) {
        for (string file : eed.outputDOT) {
            ExtraEncDec::unmToDOT(eed.encryptorFile, eed.outFolder);
        }
    }
}

ParameterVector fromUInt8(const vector<uint8_t> &arr)
{
    size_t arrSize = arr.size();
    ParameterVector vec;
    for (ulongT i = 0; i < arrSize; i++) {
        ushortT joined = arr[i++];
        joined = joined << 8;
        joined |= arr[i];
        vec.push_back(joined);
    }

    return vec;
}

ParameterVector bmpPayload(const uintT &idx, const vector<uint8_t> &arr, const ParameterVector &pass)
{
    uintT counter = idx;
    ulongT passSize = pass.size();
    ParameterVector payload(passSize);
    for (ulongT i = 0; i < passSize; i++) {
        ushortT joined = arr[counter++];
        joined = joined << 8;
        joined |= arr[counter++];
#ifdef CONTINUOUS_PARAM
        payload[i] = joined ^ (ushortT)round(pass[i]);
#else
        payload[i] = joined ^ pass[i];
#endif
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

void filterAgents(UnifiedNeuralModel *alices, UnifiedNeuralModel *bobs)
{
    size_t agentSize = alices->cells.size();
    size_t agentSize2 = bobs->cells.size();

    if (agentSize != agentSize2) {
        printf("Both models must be the same size");
        return;
    }

    ushortT payloadSize = alices->config.unmActions;
    float repetitions = 50;
    float reward = 0;
    float accumReward = 0;
    float expectedReward = payloadSize * repetitions * STEP_REWARD_FACTOR;
    vector<ParameterVector> symEncKeys(repetitions);
    vector<ParameterVector> payloads(repetitions);

    for_each(symEncKeys.begin(), symEncKeys.end(), [&payloadSize](ParameterVector &p){
        p = SymEncFunctions::randomArray(payloadSize);
    });

    for_each(payloads.begin(), payloads.end(), [&payloadSize](ParameterVector &p){
        p = SymEncFunctions::randomArray(payloadSize);
    });

    for (int i = 0; i < agentSize; i++) {
        UNMCell *aliceCell = alices->cells[i];
        UNMCell *bobCell = bobs->cells[i];

        for (uintT j = 0; j < repetitions; j++) {
            ParameterVector symEncKey = symEncKeys[j];
            ParameterVector payload = payloads[j];

            ParameterVector alicePayload = SymEncFunctions::keyedPayload(symEncKey, payload);
            ParameterVector actionAlice = UNMFunctions::step(reward, alicePayload, aliceCell);
            ParameterVector bobPayload = SymEncFunctions::keyedPayload(symEncKey, actionAlice);
            ParameterVector actionBob = UNMFunctions::step(reward, bobPayload, bobCell);

            reward = SymEncFunctions::distanceInputOutput(payload, actionBob);
            accumReward += reward;
//            printf("%i Obs: %.0f, Act: %.4f Reward: %0.2f\n", stepCounter, env->observation[0], action[0], reward);
        }

        if (accumReward < expectedReward) {
            alices->cells.erase(alices->cells.begin() + i);
            alices->config.unmPopulation--;
            bobs->cells.erase(bobs->cells.begin() + i);
            bobs->config.unmPopulation--;
            alices->cells[i]->netMod->nParams.networkID = i;
            bobs->cells[i]->netMod->nParams.networkID = i;
            agentSize--;
            i--;

            if (agentSize <= 0) {
                printf("No A&B pairs correctly deciphers the information\n");
                exit(0);
            }
        }

        accumReward = 0;
    }

    alices->config.unmPopulation = alices->cells.size();
    bobs->config.unmPopulation = bobs->cells.size();
}

void ExtraEncDec::binAESEncryption(const string &path, unsigned char key[], const string outputPath, const uint &stepSize)
{
    AES aes(128);  //128 - key length, can be 128, 192 or 256
    ParameterVector orPayload = NNExFunction::readFromBinFile(path); // Original payload
    vector<uint8_t> orUInt = inversebmpPayload(orPayload);
    uint fileSize = (uint)orUInt.size();
    unsigned int outLen = 0;  // out param - bytes in сiphertext

    string baseFile = "AES";
    string baseClear = "AESClear";

    if (stepSize != 0) {
        baseFile += "Sections";
        baseClear += "Sections";
    }

    string aesStr = appendToName(baseFile, outputPath);
    string aesClearStr = appendToName(baseClear, outputPath);

    vector<uint8_t> cypher;
    vector<uint8_t> clear;
    
    if (stepSize == 0) {
        unsigned char *partialCypher = aes.EncryptECB(orUInt.data(), fileSize, key, outLen);
        unsigned char *partialClear = aes.DecryptECB(partialCypher, outLen, key);
        for (uint i = 0; i < outLen; i++) {
            cypher.push_back(partialCypher[i]);
            clear.push_back(partialClear[i]);
        }
    }
    else {
        for (uintT i = 0; i < fileSize; i += stepSize) {
            vector<uint8_t> vecSec(orUInt.begin() + i, orUInt.begin() + i + stepSize);
            unsigned char *partialCypher = aes.EncryptECB(vecSec.data(), stepSize, key, outLen);
            unsigned char *partialClear = aes.DecryptECB(partialCypher, outLen, key);
            
            for (uint j = 0; j < stepSize; j++) {
                cypher.push_back(partialCypher[i]);
                clear.push_back(partialClear[i]);
            }
        }
    }

    ParameterVector aPayload = fromUInt8(cypher); // Alice payload
    ParameterVector bPayload = fromUInt8(clear); // Bob payload

    float nccAB = SymEncFunctions::nccCalculation(aPayload, bPayload);
    float nccAO = SymEncFunctions::nccCalculation(aPayload, orPayload);
    float nccBO = SymEncFunctions::nccCalculation(bPayload, orPayload);

    printf("-----------\n");
    printf("Number,AES-Alice Bob(%%),AES-Alice Original(%%),AES-Bob Original(%%),AES Name,AES-Clear Name\n");
    printf("%i,%f,%f,%f,%s,%s\n", 0, nccAB * 100, nccAO * 100, nccBO * 100, aesStr.c_str(), aesClearStr.c_str());

    NNExFunction::writeToBinFile(aesStr, aPayload);
    NNExFunction::writeToBinFile(aesClearStr, bPayload);
}

void ExtraEncDec::bmpAESEncryption(const char *path, unsigned char key[], const string outputPath, const uint &stepSize)
{
    BMPHandler bmpAES(path);
    BMPHandler bmpAESClear(path);
    const uint fileSize = (const uint)bmpAES.data.size();
    ParameterVector orPayload = fromUInt8(bmpAES.data); // Original payload
    unsigned int outLen = 0;  // out param - bytes in сiphertext

    AES aes(128);  //128 - key length, can be 128, 192 or 256
    string baseFile = "AES";
    string baseClear = "AESClear";

    if (stepSize != 0) {
        baseFile += "Sections";
        baseClear += "Sections";
    }

    string aesStr = appendToName(baseFile, outputPath);
    string aesClearStr = appendToName(baseClear, outputPath);

    if (stepSize == 0) {
        unsigned char *cypher = aes.EncryptECB(bmpAES.data.data(), fileSize, key, outLen);
        unsigned char *clear = aes.DecryptECB(cypher, outLen, key);

        for (uintT i = 0; i < bmpAES.data.size(); i++) {
            bmpAES.data[i] = cypher[i];
            bmpAESClear.data[i] = clear[i];
        }
    }
    else {
        for (uintT i = 0; i < fileSize; i += stepSize) {
            vector<uint8_t> vecSec(bmpAES.data.begin() + i, bmpAES.data.begin() + i + stepSize);
            unsigned char *cypher = aes.EncryptECB(vecSec.data(), stepSize, key, outLen);
            unsigned char *clear = aes.DecryptECB(cypher, outLen, key);

            for (uintT j = 0; j < stepSize; j++) {
                bmpAES.data[i + j] = cypher[j];
                bmpAESClear.data[i + j] = clear[j];
            }
        }
    }

    ParameterVector aPayload = fromUInt8(bmpAES.data); // Alice payload
    ParameterVector bPayload = fromUInt8(bmpAESClear.data); // Bob payload

    float nccAB = SymEncFunctions::nccCalculation(aPayload, bPayload);
    float nccAO = SymEncFunctions::nccCalculation(aPayload, orPayload);
    float nccBO = SymEncFunctions::nccCalculation(bPayload, orPayload);

    printf("-----------\n");
    printf("Number,AES-Alice Bob(%%),AES-Alice Original(%%),AES-Bob Original(%%),AES Name,AES-Clear Name\n");
    printf("%i,%f,%f,%f,%s,%s\n", 0, nccAB * 100, nccAO * 100, nccBO * 100, aesStr.c_str(), aesClearStr.c_str());

    aPayload.clear();

    bmpAES.write(aesStr.c_str());
    bmpAESClear.write(aesClearStr.c_str());
}

tuple<vector<ParameterVector>, vector<ParameterVector>, uint> ExtraEncDec::encryptDecrypt(ExtraEncDec eed, const ParameterVector &payload)
{
    UNMConfig conf = UNMConfig(1, 1, 100, 1);
    UnifiedNeuralModel alice = UnifiedNeuralModel(1, conf);
    NNExFunction::readBiSUNAModel(eed.encryptorFile.c_str(), &alice);

    UnifiedNeuralModel bob = UnifiedNeuralModel(1, conf);
    NNExFunction::readBiSUNAModel(eed.decryptorFile.c_str(), &bob);

    ushort maxPop = eed.maxPopulation;
    bool blockEncryption = maxPop > 0;

    if (blockEncryption == true) {
        filterAgents(&alice, &bob);
    }

    string outputPath = eed.outFolder + eed.outFileName;
    ushort population = alice.config.unmPopulation;
    ushort actions = alice.config.unmActions;
    uint stepSize = blockEncryption ? actions * 2 : actions;
    uint payloadSize = (uint)payload.size();
    bool modifyPopSize = (maxPop > 0) && (maxPop < population);
    modifyPopSize ? population = maxPop : population;

    uintT passIdx = 0;
    uintT arrIdx = 0;
    ParameterVector pass = SymEncFunctions::randomArray(payloadSize);
    
    ParameterVector aPayload;
    ParameterVector bPayload;
    vector<ParameterVector> alicesPayloads(population);
    vector<ParameterVector> bobsPayloads(population);
    
    blockEncryption ? printf("Using block encryption with population of: %i\n", population) : 0;
    printf("Number,NCC-Alice Bob(%%),NCC-Alice Original(%%),NCC-Bob Original(%%),Alice Name,Bob Name\n");

    for (uintT i = 0; i < population; i++) {
        UNMCell *aliceCell = alice.cells[i];
        UNMCell *bobCell = bob.cells[i];
        while (arrIdx < payloadSize) {
//            uintT maxIdx = arrIdx + actions * 2;

//            if (maxIdx > fileSize) {
//                break;
//            }
            ParameterVector partialPayload(payload.begin() + arrIdx, payload.begin() + arrIdx + stepSize);
            ParameterVector partialKey(pass.begin() + arrIdx, pass.begin() + arrIdx + stepSize);;
            ParameterVector alicePayload = SymEncFunctions::keyedPayload(partialKey, partialPayload);
            ParameterVector actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
            ParameterVector bobPayload = SymEncFunctions::keyedPayload(partialKey, actionAlice);
            ParameterVector bobAction = UNMFunctions::step(0, bobPayload, bobCell);

            aPayload.insert(aPayload.begin() + aPayload.size(), actionAlice.begin(), actionAlice.end());
            bPayload.insert(bPayload.begin() + bPayload.size(), bobAction.begin(), bobAction.end());

            arrIdx += stepSize;
            passIdx++;
        }

        if (aPayload.size() > payloadSize) {
            aPayload.resize(payloadSize);
        }
        
        if (bPayload.size() > payloadSize) {
            bPayload.resize(payloadSize);
        }
        
        string idxStr = to_string(i);
        string encStr = appendToName(idxStr + "Enc", outputPath);
        string decStr = appendToName(idxStr + "Dec", outputPath);

        float nccAB = SymEncFunctions::nccCalculation(aPayload, bPayload);
        float nccAO = SymEncFunctions::nccCalculation(aPayload, payload);
        float nccBO = SymEncFunctions::nccCalculation(bPayload, payload);
        
        //Number,NCC-Alice Bob(%%),NCC-Alice Original(%%),NCC-Bob Original(%%),Alice Name,Bob Name
        printf("%i,%f,%f,%f,%s,%s\n", i, nccAB * 100, nccAO * 100, nccBO * 100, encStr.c_str(), decStr.c_str());

        alicesPayloads[i] = aPayload;
        bobsPayloads[i] = bPayload;
        
        aPayload.clear();
        bPayload.clear();

        arrIdx = 0;
        passIdx = 0;
    }
    
    if (eed.storePass) {
        string passPath = outputPath + "Password.bin";
        NNExFunction::writeToBinFile(passPath, pass);
    }
    
    return {alicesPayloads, bobsPayloads, stepSize};
}

uint ExtraEncDec::binEncDec(ExtraEncDec eed)
{
    string inputPath = eed.inputFile;
    string outputPath = eed.outFolder + eed.outFileName;
    ParameterVector orPayload = NNExFunction::readFromBinFile(inputPath);
    
    tuple<vector<ParameterVector>, vector<ParameterVector>, uint> result = encryptDecrypt(eed, orPayload);
    size_t payloadsSize = get<0>(result).size();
    
    for (uintT i = 0; i < payloadsSize; i++) {
        ParameterVector baseEncPayload = get<0>(result)[i];
        ParameterVector baseDecPayload = get<1>(result)[i];
        string idxStr = to_string(i);
        string encStr = appendToName(idxStr + "Enc", outputPath);
        string decStr = appendToName(idxStr + "Dec", outputPath);
        NNExFunction::writeToBinFile(encStr, baseEncPayload);
        NNExFunction::writeToBinFile(decStr, baseDecPayload);
    }
    
    return get<2>(result);
}

uint ExtraEncDec::bmpEncDec(ExtraEncDec eed)
{
    const char *inputFile = eed.inputFile.c_str();
    string outputPath = eed.outFolder + eed.outFileName;

    BMPHandler bmpFile(inputFile);
    BMPHandler bmpEnc(inputFile);
    BMPHandler bmpDec(inputFile);

    vector<uint8_t> encPlaceholder;
    vector<uint8_t> decPlaceholder;
    
    ParameterVector orPayload = fromUInt8(bmpFile.data);
    
    tuple<vector<ParameterVector>, vector<ParameterVector>, uint> result = encryptDecrypt(eed, orPayload);
    size_t payloadsSize = get<0>(result).size();
    size_t dataSize = bmpFile.data.size();
    
    for (uintT i = 0; i < payloadsSize; i++) {
        ParameterVector baseEncPayload = get<0>(result)[i];
        ParameterVector baseDecPayload = get<1>(result)[i];
        
        encPlaceholder = inversebmpPayload(baseEncPayload);
        decPlaceholder = inversebmpPayload(baseDecPayload);

        if (encPlaceholder.size() > dataSize) {
            encPlaceholder.resize(dataSize);
        }

        if (decPlaceholder.size() > dataSize) {
            decPlaceholder.resize(dataSize);
        }

//        set<ushortT> aP(aPayload.begin(), aPayload.end());
//        set<ushortT> bP(bPayload.begin(), bPayload.end());
//        set<ushortT> rP(orPayload.begin(), orPayload.end());
//        printf("Repetitions: %zu - %zu - %zu - %zu\n", orPayload.size(), aP.size(), bP.size(), rP.size());
//        printf("EncPayload: \n");
//        for (uintT i = 0; i < vecSize; i++) {
//            printf("%i - %i - %i\n", orPayload[i], aPayload[i], bPayload[i]);
//        }

        bmpEnc.data = encPlaceholder;
        bmpDec.data = decPlaceholder;

        string idxStr = to_string(i);
        string encStr = appendToName(idxStr + "Enc", outputPath);
        string decStr = appendToName(idxStr + "Dec", outputPath);
        bmpEnc.write(encStr.c_str());
        bmpDec.write(decStr.c_str());
    }

    // This value is returned in order to signal how many "actions" the UNM used, that way an AES
    // block encryption can use the same number of outputs.
    return get<2>(result);
}

string namedStr(const string &s)
{
    string ss = s;
    size_t indexSlash = ss.find_last_of("/");
    if (indexSlash == std::string::npos) {
        indexSlash = 0;
    }

    size_t indexDot = ss.find_last_of(".");
    if (indexDot == std::string::npos) {
        indexDot = s.size() - 1;
    }

    return s.substr(indexSlash, indexDot);
}

void ExtraEncDec::unmToDOT(string fileName, string outFolder)
{
    UNMConfig conf = UNMConfig(1, 1, 100, 1);
    UnifiedNeuralModel unm = UnifiedNeuralModel(1, conf);
    NNExFunction::readBiSUNAModel(fileName.c_str(), &unm);

    string baseName = outFolder + namedStr(fileName);

    for (UNMCell *cell : unm.cells) {
        string name = baseName + to_string(cell->netMod->nParams.networkID) + ".dot";
        NNExFunction::printGraph(name.c_str(), cell->netMod);
    }
}

//float ExtraEncDec::ExtraEncDecBlock(int argc, const char * argv[])
//{
//    if (argc < 6 || argc > 7) {
//        printf("This program needs 5 elements:\n");
//        printf("1.- Path to BiSUNA ini file\n");
//        printf("2.- Path to encryptor file\n");
//        printf("3.- Path to decryptor file\n");
//        printf("4.- Path to file bmp file\n");
//        printf("5.- Path to output file, ex: images/Result.bmp\n");
//        printf("6.- Max number of blocks(agents)");
//        printf("Finishing execution now");
//        return 0;
//    }
//
//    if (NNExFunction::checkFile(argv[2]) == false) {
//        printf("Encryptor file is not correct\n");
//        printf("Finishing execution now");
//    }
//
//    if (NNExFunction::checkFile(argv[3]) == false) {
//        printf("Decryptor file is not correct\n");
//        printf("Finishing execution now");
//    }
//
//    if (NNExFunction::checkFile(argv[4]) == false) {
//        printf("BMP file is not correct\n");
//        printf("Finishing execution now");
//    }
//
//    PConfig::globalProgramConfiguration(argv[1]);
//    UNMConfig conf = UNMConfig(1, 1, 100, 1);
//    UnifiedNeuralModel alice = UnifiedNeuralModel(1, conf);
//    NNExFunction::readBiSUNAModel(argv[2], &alice);
//
//    UnifiedNeuralModel bob = UnifiedNeuralModel(1, conf);
//    NNExFunction::readBiSUNAModel(argv[3], &bob);
//
//    filterAgents(&alice, &bob);
//
//    BMPHandler bmpFile(argv[4]);
//    BMPHandler bmpEnc(argv[4]);
//    BMPHandler bmpDec(argv[4]);
//
//    vector<uint8_t> encPayload;
//    vector<uint8_t> encPlaceholder;
//    vector<uint8_t> decPayload;
//    vector<uint8_t> decPlaceholder;
//    string outputPath(argv[5]);
//    ulongT fileSize = bmpFile.data.size();
//    ushortT population = alice.config.unmPopulation;
//    ushortT actions = alice.config.unmActions;
//    uintT stepSize = actions * 2;
//    uintT sections = (uintT) fileSize / stepSize;
//    ushortT maxPop = strtoul(argv[6], NULL, 0);
//    maxPop < population ? population = maxPop : population;
//    vector<ParameterVector> pass(sections);
//    uintT arrIdx = 0;
////    std::generate(pass.begin(), pass.end(), [&]{ return ++arrIdx; });
//    for_each(pass.begin(), pass.end(), [&actions](ParameterVector &vec) { vec = SymEncFunctions::randomArray(actions); });
//    arrIdx = 0;
//    uintT passIdx = 0;
//    uintT popPos = 0;
//
//    ParameterVector aPayload;
//    ParameterVector bPayload;
//    ParameterVector orPayload = fromUInt8(bmpFile.data);
//    printf("Population: %i\n", population);
//    printf("Number,NCC-Alice Bob(%%),NCC-Alice Original(%%),NCC-Bob Original(%%),Alice Name,Bob Name\n");
//
//    while (arrIdx < fileSize) {
//
//        if (passIdx >= sections) {
//            passIdx = 0;
//        }
//
//        ParameterVector symEncKey = pass[passIdx];
//        ParameterVector alicePayload = bmpPayload(arrIdx, bmpFile.data, symEncKey);
//        ParameterVector actionAlice;
//        ParameterVector bobAction;
//        for (uintT i = 0; i < population; i++) {
//            UNMCell *aliceCell = alice.cells[popPos];
//            actionAlice = UNMFunctions::step(0, alicePayload, aliceCell);
//            alicePayload = SymEncFunctions::keyedPayload(symEncKey, actionAlice);
//        }
//
//        encPlaceholder = inversebmpPayload(actionAlice);
//        encPayload.insert(encPayload.end(), encPlaceholder.begin(), encPlaceholder.end());
//        ParameterVector bobPayload = alicePayload;
//
//        for (int i = population - 1; i > -1; i--) {
//            UNMCell *bobCell = bob.cells[i];
//            bobAction = UNMFunctions::step(0, bobPayload, bobCell);
//            bobPayload = SymEncFunctions::keyedPayload(symEncKey, bobAction);
//        }
//
//        decPlaceholder = inversebmpPayload(bobAction);
//        decPayload.insert(decPayload.end(), decPlaceholder.begin(), decPlaceholder.end());
//
//        aPayload.insert(aPayload.end(), actionAlice.begin(), actionAlice.end());
//        bPayload.insert(bPayload.end(), bobAction.begin(), bobAction.end());
//
//        arrIdx += actions * 2;
//        passIdx++;
//    }
//
//    size_t vecSize = bmpEnc.data.size();
//    if (encPayload.size() > vecSize) {
//        encPayload.resize(vecSize);
//    }
//
//    vecSize = bmpDec.data.size();
//    if (decPayload.size() > vecSize) {
//        decPayload.resize(vecSize);
//    }
//
//    vecSize = orPayload.size();
//    aPayload.resize(vecSize);
//    bPayload.resize(vecSize);
//
//    set<ushortT> aP(aPayload.begin(), aPayload.end());
//    set<ushortT> bP(bPayload.begin(), bPayload.end());
//    set<ushortT> rP(orPayload.begin(), orPayload.end());
//
//    printf("Repetitions: %zu - %zu - %zu - %zu\n", orPayload.size(), aP.size(), bP.size(), rP.size());
//
////        printf("EncPayload: \n");
////        for (uintT i = 0; i < vecSize; i++) {
////            printf("%i - %i - %i\n", orPayload[i], aPayload[i], bPayload[i]);
////        }
//
//    bmpEnc.data = encPayload;
//    bmpDec.data = decPayload;
//
//    string idxStr = to_string(0);
//    string encStr = appendToName(idxStr + "Enc", outputPath);
//    string decStr = appendToName(idxStr + "Dec", outputPath);
//    bmpEnc.write(encStr.c_str());
//    bmpDec.write(decStr.c_str());
//
//    float nccAB = SymEncFunctions::nccCalculation(aPayload, bPayload);
//    float nccAO = SymEncFunctions::nccCalculation(aPayload, orPayload);
//    float nccBO = SymEncFunctions::nccCalculation(bPayload, orPayload);
//    //Number,NCC-Alice Bob(%%),NCC-Alice Original(%%),NCC-Bob Original(%%),Alice Name,Bob Name
//    printf("%i,%f,%f,%f,%s,%s\n", 0, nccAB * 100, nccAO * 100, nccBO * 100, encStr.c_str(), decStr.c_str());
//
//    aPayload.clear();
//    bPayload.clear();
//
//    encPayload.clear();
//    decPayload.clear();
//    arrIdx = 0;
//    passIdx = 0;
//
//    return 0;
//}
