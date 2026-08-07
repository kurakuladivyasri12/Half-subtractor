 
Full Subtractor using Verilog HDL

📌 Project Overview

A Full Subtractor is a combinational digital circuit used to subtract two binary bits along with a borrow input.

It has:

- 3 inputs: A, B, and Bin
- 2 outputs: Difference and Borrow Out (Bout)

The Full Subtractor performs:

A - B - Bin

🎯 Objectives

- To understand the working of a Full Subtractor.
- To design a Full Subtractor using Verilog HDL.
- To create a testbench for verification.
- To simulate the design.
- To verify the output using the truth table.

🔢 Inputs and Outputs

Signal| Description
A| Minuend
B| Subtrahend
Bin| Borrow input
Difference| Difference output
Bout| Borrow output

📊 Truth Table

A| B| Bin| Difference| Bout
0| 0| 0| 0| 0
0| 0| 1| 1| 1
0| 1| 0| 1| 1
0| 1| 1| 0| 1
1| 0| 0| 1| 0
1| 0| 1| 0| 0
1| 1| 0| 0| 0
1| 1| 1| 1| 1

🧮 Boolean Expressions

Difference

Difference = A ⊕ B ⊕ Bin

Borrow Out

Bout = A'B + A'Bin + BBin

💻 Verilog Design

The main design is written in "full_subtractor.v".

module full_subtractor(
    input A,
    input B,
    input Bin,
    output Difference,
    output Bout
);

    assign Difference = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule

🧪 Testbench

The file "full_subtractor_tb.v" tests all 8 possible combinations of A, B, and Bin.

The testbench also generates a ".vcd" waveform file that can be viewed using GTKWave.

▶️ Simulation using Icarus Verilog

Step 1: Compile the design

iverilog -o full_subtractor_sim full_subtractor.v full_subtractor_tb.v

Step 2: Run the simulation

vvp full_subtractor_sim

📋 Expected Console Output

A B Bin | Difference Borrow
---------------------------
0 0  0  |     0        0
0 0  1  |     1        1
0 1  0  |     1        1
0 1  1  |     0        1
1 0  0  |     1        0
1 0  1  |     0        0
1 1  0  |     0        0
1 1  1  |     1        1

📈 Viewing the Waveform

After running the simulation, the file:

full_subtractor.vcd

will be generated.

Open it using GTKWave:

gtkwave full_subtractor.vcd

Add the following signals to the waveform:

A
B
Bin
Difference
Bout

The waveform should match the truth table.

📂 Repository Structure

full-subtractor/
│
├── README.md
├── full_subtractor.v
├── full_subtractor_tb.v
└── simulation/
    └── simulation_output.txt

🏁 Conclusion

The Full Subtractor was successfully designed using Verilog HDL. The testbench tested all eight possible input combinations. The simulation results match the expected truth table, confirming that the Full Subtractor works correctly.

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

⭐ Project Status

Completed and verified through simulation.