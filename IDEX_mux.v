`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 07:40:08 PM
// Design Name: 
// Module Name: IDEX_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IDEX_mux(input [31:0] IDEX_RegData, input [31:0] EXMEM_out, input [31:0]MEMWB_out, input [1:0]Forward, output reg [31:0]ALU_in

    );
    
    always @ (*)
    begin
    if (Forward==2'b01)
    begin
        assign ALU_in= EXMEM_out;
    end
    else if (Forward==2'b10)
    begin
        assign ALU_in = MEMWB_out;
    end
    else
    begin
        assign ALU_in = IDEX_RegData;
    end
    end
    
 
    
    
endmodule
