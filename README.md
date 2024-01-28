# Pipelined-CPU
Five-Stage Pipelined CPU designed using Verilog
Created in associationg with Boston University ENG EC413. 

# How it's made
Through our Compuer Organiation class we spentall semester building up to this final pipelined CPU. We first started by building adders and subtractors, which then turned into ALUs, pipelined registers, and single cycle CPUs. With these we were tasked to make the final pipelined CPU. Specifically, we added forwarding units, hazard detection units, ALU controls, arbitration logic, and register bypass methods. The result is a five-stage pipelined CPU.

# The Stages
Our design consisited of 5 stages. They are in order: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), Memory (MEM), and Write Back (WB). Below shows a picture of our model.

# Hazard-Detection and Forwarding Unit
We added some logic in the later stages of our pipeline to detect for pipeline hazards. Essentially we are looking to see if an instruction calls upon a register that has not yet made it out of the pipeline into memory. The problem that arises with this is that when we call data from memory we might not be getting the most recent version. We added logic to check for this. In the case that there is a hazard, we designed a forwarding unit that pushes the newer, more current register value to where it needs to be. Additionally, we added logic to our forwarding unit to determine which version of the register should be pushed to the forwarding unit. 
