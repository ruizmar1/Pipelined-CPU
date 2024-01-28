# Pipelined-CPU
Five-Stage Pipelined CPU designed using Verilog
Created in associationg with Boston University ENG EC413. 

# How it's made
Through our Compuer Organiation class we spentall semester building up to this final pipelined CPU. We first started by building adders and subtractors, which then turned into ALUs, pipelined registers, and single cycle CPUs. With these we were tasked to make the final pipelined CPU. Specifically, we added forwarding units, hazard detection units, ALU controls, arbitration logic, and register bypass methods. The result is a five-stage pipelined CPU.

# The Stages
Our design consisited of 5 stages. They are in order: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory (MEM), and Write Back (WB). Below shows a picture of our model.
![image](https://github.com/ruizmar1/Pipelined-CPU/assets/114714808/70cc7205-43a7-4500-8a77-6bf43b012164)


