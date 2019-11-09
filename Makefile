CFLAGS= -O3 -Wall
#-Wall -pedantic -ansi
#CFLAGS=-O4
ENVPATH=src/Environments/

MAIN_REINFORCEMENT_LEARNING=src/main.cpp
ENVIRONMENTS=$(ENVPATH)ReinforcementEnvironment.cpp $(ENVPATH)MountainCar.cpp $(ENVPATH)DoubleCartPole.cpp $(ENVPATH)FunctionApproximation.cpp $(ENVPATH)Multiplexer.cpp $(ENVPATH)SingleCartPole.cpp $(ENVPATH)SymmetricEncryption.cpp
AGENTS=src/RLAgent/UnifiedNeuralModel.cpp
NN=src/NN/NNetwork.cpp src/NN/NNetworkModule.cpp src/NN/NNetworkState.cpp src/NN/NNoveltyMap.cpp src/NN/NNetworkExtra.cpp
OCL=src/OCL/OpenCLUtils.cpp src/OCL/OCLBridge.cpp src/OCL/OCLContainer.cpp
OTHER=src/RandomUtils.cpp src/Configuration/PConfig.cpp

LDFLAGS = -Llib -Iheaders -Isrc -pthread -lOpenCL # -Wno-ignored-attributes
LDFLAGS += -L/usr/local/lib

all: main

main:
	g++ -std=c++17 $(CFLAGS) $(MAIN_REINFORCEMENT_LEARNING) $(AGENTS) $(NN) $(ENVIRONMENTS) $(OCL) $(OTHER) $(LDFLAGS) -o bisuna