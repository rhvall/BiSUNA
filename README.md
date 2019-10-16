# BiSUNA - OpenCL

**Bi**nary **S**pectrum-unified **N**euroevolutionary **A** rchitecture capable of executing OpenCL
kernels. This project presents a different approach to train from scratch
Binary Neural Networks (BNN) using neuroevolution as its base technique (gradient
descent free) that takes advantage of OpenCL acceleration.

Obtain non-linear Deep NN that use binary values in weights, activations, operations
and is completely gradient free; which brings us to the brief summary of the
capabilities of shown with this implementation:

• Weights and activations are represented with fixed length bitset (16 bits)
• Only logic operations (AND, XOR, OR...) are used, no need of Arithmetic Logic Unit (ALU)
• Neuroevolution is employed to drive the space search
• BNN do not have a fixed network topology, which adapt and optimize for the problem at hand.

This code is the open source release of the project AP004 in the InnovateFPGA
competition. Check http://www.innovatefpga.com/cgi-bin/innovate/teams.pl?Id=AP004
for more details. The video presentation of this project can be found in the
following link: https://youtu.be/eX2jxLuIqj8

![Float - Binary neural network](resources/Float-BinaryNetwork.png)

## Installation

This project has been tested with correct execution on Linux and MacOS. It has multiple
requirements in order to be able to compile code from the makefile. Basically it needs:

- OpenCL runtime
- gPRC & Protobuf: used for OpenAI Gym communication

In order to recreate that environment, check the file "[RecreateEnvironment.sh](scripts/RecreateEnvironment.sh)"

If FPGA is targeted, the Altera Offline Compiler is needed to compile the aocx, which is
the bitstream used to reprogram it at time the binary executes.

## Execution

Once a binary is obtained, it is just about to executing the file along with a configuration
file that provides all runtime details like the following:

```
./bisuna resources/BiSUNAConf.ini
```

The ini file will instruct BiSUNA what type of execution, device type and all other details.

## Reinfocement Learning Environments

- Mountain Car
- Double Cart Pole (with and without velocities)
- Function Approximation
- Multiplexer
- Single Cart Pole
- OpenAI Gym Interface


## Original SUNA
This project was based on the original [SUNA](https://github.com/zweifel/Physis-Shard) implementation.


## OpenAI Gym

If you are looking to execute the OpenAI Gym environments, you will need to run [gym-uds-server](https://github.com/rval735/gym-uds-api)
on the background according to the number of threads/population size if the execution type is Thread
or OpenCL. Also, you will need to change the "EnvironmentName" and "EnvironmentConf" to adapt for GymEnv.

In case, running multiple gym environments with different sockets each is quite annoying, check file
(RunGymEnvs.sh)[scripts/RunGymEnvs.sh] to do something like this:

```
Terminal 1 - scripts/RunGymEnvs.sh MountainCar-v0 100
Terminal 2 - ./bisuna resources/BiSUNAConf.ini

OUTPUT:

Config file: BiSUNAConf.ini
Environment: MountainCar-v0-v1
Environment: MountainCar-v0-v1
Environment: MountainCar-v0-v1
Environment: MountainCar-v0-v1
Generation: 0
From all threads, best was: 25.506468
----------------------------------------
Generation: 1

```

## Resource Utilization

Below are shown three screenshots of the resource utilization when BiSUNA was compiled for the Cyclone V:

![FPGA Fitter](resources/utilization/FPGA-Fitter.png)

![FPGA Maximum Frequency](resources/utilization/FPGA-FMax.png)

![FPGA Power Dissipation](resources/utilization/FPGA-Power.png)