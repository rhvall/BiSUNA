CFLAGS= -O3 -Wall
#-Wall -pedantic -ansi
#CFLAGS=-O4
ENVPATH=src/Environments/
GYMPATH=$(ENVPATH)gym-uds/

MAIN_REINFORCEMENT_LEARNING=src/main.cpp
ENVIRONMENTS=$(ENVPATH)Reinforcement_Environment.cpp $(ENVPATH)Mountain_Car.cpp $(ENVPATH)Double_Cart_Pole.cpp $(ENVPATH)Function_Approximation.cpp $(ENVPATH)GymEnv.cpp $(ENVPATH)Multiplexer.cpp $(ENVPATH)Single_Cart_Pole.cpp
AGENTS=src/RLAgent/UnifiedNeuralModel.cpp
NN=src/NN/NNetwork.cpp src/NN/NNetworkModule.cpp src/NN/NNetworkState.cpp src/NN/NNoveltyMap.cpp src/NN/NNetworkExtra.cpp
GYMUDS=$(GYMPATH)gym-uds.grpc.pb.cc $(GYMPATH)gym-uds.pb.cc $(GYMPATH)gym-uds.cc
OCL=src/OCL/OpenCLUtils.cpp src/OCL/OCLBridge.cpp src/OCL/OCLContainer.cpp
OTHER=src/RandomUtils.cpp src/Configuration/PConfig.cpp

LDFLAGS = -Llib -Iheaders -Isrc -pthread -lOpenCL # -Wno-ignored-attributes
LDFLAGS += -L/usr/local/lib `pkg-config --libs protobuf grpc++ grpc`

all: main

main:
	g++ -std=c++17 $(CFLAGS) $(MAIN_REINFORCEMENT_LEARNING) $(AGENTS) $(NN) $(GYMUDS) $(ENVIRONMENTS) $(OCL) $(OTHER) $(LDFLAGS) -o bisuna