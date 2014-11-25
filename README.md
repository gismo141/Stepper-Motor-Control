# Stepper-Motor-Control with NIOS II/s and Cyclone IV/V - FPGA

**System on a Chip - HT-2014**

## Documentation History

v1.0.0 Marc Kossmann & Michael Riedel:

- finalized milestone 1b

## Overview

This project is an example for a system-on-a-chip-design of a stepper-motor-control using the NIOS II/s Processor on the development boards from [terasIC](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=163#Category165).

![Project-Overview][fig:soc2014]

## Software

The following software is beeing used for the development:

- VHDL-Simulation: [ModelSim - Starter Edition (14.0.2)](http://www.altera.com/products/software/quartus-ii/modelsim/qts-modelsim-index.html)
- VHDL-Source- and Project-Management: [Quartus II - Web Edition (14.0.0)](http://www.altera.com/products/software/quartus-ii/web-edition/qts-we-index.html)
- C-Source-Management: [NIOS (based on Eclipse, integrated in Quartus)](http://www.altera.com/devices/processor/nios2/tools/ide/ni2-ide.html)

## Development

The development is devided into 4 so-called *milestones*:

##### 1. Basic Processor Development

[a) Design-Phase](Documentation/Milestone_1a/Meilenstein_1a.md):
  - UML-diagrams;
  - project-planning;
  - tasks-overview;
  - interrupt-service-routines;
  - listing of OS-components (events, mutexes, semaphores, message queues, etc).

[b) NIOS II/s Base-Software without stepper-component](Documentation/Milestone_1b/Meilenstein_1b.md):
  - Proof-of-Concept with working C-Sources
  - complete Doxygen-documentation

##### 2. NIOS II/s Base-Software with register-interface

- [presenting the solution](Documentation/Milestone_2/Meilenstein_2.md)
    + show control-status (`ctrlReg`) on red-LEDs ([chapter 8.2.4]())
    + show speed-status (`speedReg`) on green-LEDs ([chapter 8.2.4]())
    + show steps-status (`stepsReg`) on NIOS-console (with changing values in debug-mode)
    + testing of the steppermotor-ISR by setting the `requestbit` every 4s
- [development of VHDL-register-interface](Documentation/Milestone_2/Meilenstein_2.md)
    + listing and description of chosen desing-parameters
    + block-diagram of the register-interface showing all signals
    + Proof-of-Concept with working VHDL-Sources
    + available simulation-files

##### 3. Motor-Control-Unit

[a) Idea of Design](Documentation/Milestone_3a/Meilenstein_3a.md)
  - block-diagram for every component
  - state-diagrams (if necessary)
  - textual representation of the design-idea

[b) Isolated Control via DE0 / DE2 - Board-Switches](Documentation/Milestone_3b/Meilenstein_3b.md)
  - presenting the solution
      + metering of the important speedsteps 0, 1 and 7
      + qualitative presentation of every other speedsteps
      + demonstration of every usage-mode
  - Proof-of-Concept with working VHDL-Sources
  - available simulation-files

##### 4. Combined Solution

combining the motor-control-unit with the NIOS II/s Base-Software with register-interface

[fig:soc2014]: SoC2014.png "Project-Overview"