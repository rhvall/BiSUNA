# BiSUNA - OpenCL

![GPL-v3 or later](resources/images/gplv3-or-later.png)

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

![Float - Binary neural network](resources/images/Float-BinaryNetwork.png)

## Installation

This project has been tested with correct execution on Linux and MacOS. It has two main library
requirement in order to be able to compile code from the makefile. The first, it needs the
OpenCL development libraries. If running in a Debian/Ubuntu distribution it is as simple
as running

```
sudo apt install build-essential opencl-dev
```

The second is GRPC, which involves more steps necessary to compile the code. In order to
recreate that environment, check the file "[Install-Compile-Execute.sh](scripts/InstallGRPC.sh)"

If an FPGA is the target platform, an special compiler is needed to obtain the bitstream
used to deploy on these boards, that is used to reprogram it at time the binary executes.

## Execution

Once a binary is obtained, it is just about to executing the file along with a configuration
file that provides all runtime details like the following:

```
./bisuna resources/BiSUNAConf.ini
```

The ini file will instruct BiSUNA what type of execution, device type and all other details.
Have in consideration that BiSUNAConf.ini has a parameter "EnvironmentConf", which should
have the path to another "ini" file with the correct environment details.

## Reinfocement Learning Environments

- Mountain Car
- Double Cart Pole (with and without velocities)
- Function Approximation
- Multiplexer
- Single Cart Pole
- SymmetricEncryption
- OpenAI Gym: MoutainCar-v0, NChain-v0, Roulette-v0, Copy-v0 & DuplicatedInput-v0

Note: This project was inpired on repository from [Physis-Shard](https://github.com/zweifel/Physis-Shard) implementation.

## Intel FPGA Resource Utilization

Below are shown three screenshots of the resource utilization when BiSUNA was compiled for the Cyclone V:

![FPGA Fitter](resources/images/FPGA-Fitter.png)

![FPGA Maximum Frequency](resources/images/FPGA-FMax.png)

![FPGA Power Dissipation](resources/images/FPGA-Power.png)

## Xilinx FPGA Resource Utilization

Below are shown three screenshots of the resource utilization when BiSUNA was compiled for the Xilinx U50 board:

![FPGA Utilization](resources/images/N-2CU-HBM012.png)

![FPGA Execution](resources/images/O2-1vs3HBMTimeBinCont.png)

## BiSUNA Publications

First paper [reference](papers/APCCAS2019.bib) about BiSUNA algorithm [APCCAS 2019 Paper](papers/APCCAS2019.pdf).

Second paper [reference](papers/FPT2019.bib) about Intel FPGA execution of BiSUNA [FPT 2019 Paper](papers/FPT2019.pdf).

Third Paper [reference](papers/CSDE-FPGA.bib) about Xilinx FPGA execution of BiSUNA [CSDE FPGA 2020 Paper](papers/CSDE-FPGA.pdf).

Fourth Paper [reference](papers/CSDE-ANE.bib) about Adversarial Neuro Encoding using BiSUNA [CSDE ANE 2020 Paper](papers/CSDE-ANE.pdf).
