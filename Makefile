CFLAGS= -O3 -Wall
#-Wall -pedantic -ansi
#CFLAGS=-O4
ENVPATH=src/Environments/

MAIN_REINFORCEMENT_LEARNING=src/main.cpp
ENVIRONMENTS=$(ENVPATH)ReinforcementEnvironment.cpp $(ENVPATH)MountainCar.cpp $(ENVPATH)DoubleCartPole.cpp
ENVIRONMENTS+=$(ENVPATH)FunctionApproximation.cpp $(ENVPATH)Multiplexer.cpp $(ENVPATH)SingleCartPole.cpp
ENVIRONMENTS+=$(ENVPATH)SymmetricEncryption.cpp $(ENVPATH)SymmetricEncryptionCPA.cpp $(ENVPATH)RandomWalk/RandomWalk.cpp
ENVIRONMENTS+=$(ENVPATH)ExtraEncDec/AES.cpp $(ENVPATH)ExtraEncDec/ExtraEncDec.cpp $(ENVPATH)DistributedCPA.cpp $(ENVPATH)DecEncryptorCPA.cpp
GYMENV=$(ENVPATH)OpenAIGym/GymEnv.cpp $(ENVPATH)OpenAIGym/GymUDS.cpp $(ENVPATH)OpenAIGym/GymUDS.pb.cc $(ENVPATH)OpenAIGym/GymUDS.grpc.pb.cc
AGENTS=src/RLAgent/UnifiedNeuralModel.cpp
NN=src/NN/NNetwork.cpp src/NN/NNetworkModule.cpp src/NN/NNetworkState.cpp src/NN/NNoveltyMap.cpp src/NN/NNetworkExtra.cpp src/NN/NNetworkOCL.cpp
OCL=src/OCL/OpenCLUtils.cpp src/OCL/OCLBridge.cpp src/OCL/OCLContainer.cpp
OTHER=src/RandomUtils.cpp src/Configuration/PConfig.cpp

## Check pkg-config paths
## pkg-config --variable pc_path pkg-config

UNAME := $(shell uname)
LDFLAGS = -Iheaders -Isrc -pthread
GRPCHEADERS = -IgrpcLib/include
export PKG_CONFIG_PATH=grpcLib/lib/pkgconfig/

ifeq ($(UNAME), Linux)
	LDFLAGS += -lOpenCL -Wno-ignored-attributes -Wno-return-type -Wno-deprecated-declarations -Wno-unused-result -Wno-sign-compare
	GRPCLIBS = `pkg-config --libs protobuf grpc++ grpc` -Wl,--no-as-needed -lgrpc++_reflection -Wl,--as-needed -ldl
endif
ifeq ($(UNAME), Darwin)
	LDFLAGS += -framework OpenCL -Wno-missing-braces
	export PKG_CONFIG_PATH=grpcLib/lib/pkgconfig/:/usr/local/Cellar/openssl@1.1/1.1.1g/lib/pkgconfig
	GRPCLIBS = `pkg-config --libs protobuf grpc++` -framework CoreFoundation -LgrpcLib/lib -lgrpc++_reflection -ldl
endif

LDFLAGS += -L/usr/local/lib

all: bisuna bisunaGym suna sunaGym

bisuna:
	g++ -std=c++17 $(CFLAGS) $(PROFILE) $(MAIN_REINFORCEMENT_LEARNING) $(AGENTS) $(NN) $(ENVIRONMENTS) $(OCL) $(OTHER) $(LDFLAGS) -o bisuna

suna:
	g++ -std=c++17 -DCONTINUOUS_PARAM $(CFLAGS) $(PROFILE) $(MAIN_REINFORCEMENT_LEARNING) $(AGENTS) $(NN) $(ENVIRONMENTS) $(OCL) $(OTHER) $(LDFLAGS) -o suna

bisunaGym:
	g++ -std=c++17 -DGYMENV $(GRPCHEADERS) $(CFLAGS) $(PROFILE) $(MAIN_REINFORCEMENT_LEARNING) $(AGENTS) $(NN) $(ENVIRONMENTS) $(GYMENV) $(OCL) $(OTHER) $(LDFLAGS) $(GRPCLIBS) -o bisunaGym

sunaGym:
	g++ -std=c++17 -DCONTINUOUS_PARAM -DGYMENV $(GRPCHEADERS) $(CFLAGS) $(PROFILE) $(MAIN_REINFORCEMENT_LEARNING) $(AGENTS) $(NN) $(ENVIRONMENTS) $(GYMENV) $(OCL) $(OTHER) $(LDFLAGS) $(GRPCLIBS) -o sunaGym

clean:
	rm -f bisuna suna bisunaGym sunaGym
