# SingleCycleCPU

## Objective

The objective of this repositories is to model the Single Cycle implementation of MIPS computer in Verilog that support a subset of MIPS instruction set including:
* The memory-reference instructions load word (*lw*) and store word (*sw*)
* The arithmetic-logical instructions *add, addi, sub, and, andi, or,* and *slt*
* The jumping instructions branch equal (*beq*), branch not equal (*bne*), and jump (*j*)

## Working Flow

The following diagram shows the working flow of the Single Cycle CPU and was referenced when creating the Verilog files. (*source: Computer Organization and Design, by Patterson and Hennessy, Morgan Kaufmann Publishers*)

![SingleCycle](https://github.com/JYBian/PipelineCPU/blob/master/PiplineCPU.png)

