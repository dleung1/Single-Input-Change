# Single-Input-Change

Verilog File with Testbench.

Purpose of this is to solve a single input change problem with state machines through the use of state tables and state diagrams to reduce the number of total states to a minimum.

Problem
Two Inputs: x1, x2
Output: z

Z is true when x1 and x2 are 1 and the second previous change was x1. 
Else Z is equal to 0.

For example [x1,x2]: 00 -> 10 -> 11 ; Z = 1

                   : 00 -> 01 -> 11 ; Z = 0
                   
