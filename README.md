# Barrel Shifter

As part of the IC Design Training, I have implemented an 8-bit barrel shifter circuit. It is synchronous, performs right-rotation and the amount of rotation is specified by the 3-bit select lines input. Thus, this circuit rotates the data by the specified number of bits.


<div align="center">
  <img src="https://media.licdn.com/dms/image/v2/D5612AQHivVCJVCpLtQ/article-cover_image-shrink_423_752/article-cover_image-shrink_423_752/0/1679238936329?e=1785369600&v=beta&t=N-G03ontXCgdxFWhLCLGP-D8oJCdrVMt-8Qtwr5mgV8" alt="Barrel Shifter Image" width="500">
</div>


I originally implemented the circuit in Verilog but I have added the SystemVerilog implementation as well. Both implementations differ only slightly in syntax but will give the same output and waveform.

## Waveform
Following is the waveform of the implemented barrel shifter:
![Barrel Shifter Waveform](/barrel_shifter.png)

## How to Run the Code
To run the same code, you need have a software like ModelSim QuartusPrime or Vivado. However, for a quick simulation, without installation, you can use EDA Playground to simulate the code using the following instructions:
1) Go to EDA Playground website and make an account
2) Paste your module and testbench code
3) Select Icarus Verilog in "Tools & Simulators"
4) Check the "Open EPWave after run" tickbox
5) See the waveform

