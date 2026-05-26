# RTL PWM Generator using Verilog (Vivado)

#Overview
This project implements a Pulse Width Modulation (PWM) generator using Verilog HDL in Xilinx Vivado.

The design generates a PWM signal with:

* Fixed PWM frequency
* Variable duty cycle
* Clock divider for timing control

The duty cycle can be varied to control the average power delivered to devices such as LEDs, motors, and fans.
The objective of this project is to understand:
* Sequential RTL design
* Clock division
* Counters
* Comparator-based PWM generation
* Verilog simulation and waveform analysis
* FPGA-oriented design flow

## Working Principle

The project works in the following stages:
1. Clock Divider

   * Slows down the FPGA clock to create a slower timing signal.

2. PWM Counter

   * Counts continuously from 0 to 255.

3. Comparator Logic

   * Compares the counter value with the duty cycle input.

4. PWM Output

   * Output stays HIGH while:
     counter < duty
   * Otherwise output becomes LOW.
By changing the duty cycle, the HIGH time of the PWM signal changes, which controls the effective output power.

##  Project Architecture

Clock
  ↓
Clock Divider
  ↓
PWM Counter
  ↓
Comparator
  ↓
PWM Output


##  Project Files
 
`clock_divider.v` - Generates slower clock     
`pwm_core.v`      - PWM generation logic          
`top_pwm.v`       - Connects divider and PWM core 
`top_pwm_tb.v`  - Testbench for simulation      

## Tools Used

* Xilinx Vivado 2024.1
* Verilog HDL
* XSim Simulator

##  Simulation

The design was functionally verified using Vivado XSim.
Simulation verifies:

* Clock generation
* Reset behavior
* Duty cycle variation
* PWM output generation
Example duty cycle values tested:

* 0%
* 25%
* 50%
* 75%

## Future Improvements
Planned future enhancements:
* Basys-3 FPGA implementation
* LED brightness control demo
* Push-button controlled duty cycle
* Parameterized PWM resolution

##  Learning Outcomes
Through this project, the following concepts were learned:

* RTL design methodology
* Counters and timing logic
* PWM generation
* Verilog testbench writing
* FPGA project structure
* Simulation waveform debugging

## Author
Sham-B
Electronics Engineering – VLSI Design & Technology
