`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 07:26:45 PM
// Design Name: 
// Module Name: ForwardingUnit
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


module ForwardingUnit(input [4:0]EXMEM_RegDest, input [4:0]MEMWB_RegDest, input [4:0] IDEX_Rs, input [4:0]IDEX_Rt, input [1:0]EXMEM_RegWrite, input [1:0]MEMWB_RegWrite, output reg [1:0]ForwardA, output reg [1:0]ForwardB

    );
    
    always @ (*)
    begin

    
    //assigning ForwardA
    if ((EXMEM_RegWrite!=0)&&(EXMEM_RegDest!=0)&&(EXMEM_RegDest==IDEX_Rs)&&(MEMWB_RegDest==IDEX_Rs))
    begin
        assign ForwardA=2'b01;
    end
    else if((EXMEM_RegWrite!=0)&&(EXMEM_RegDest!=0)&&(EXMEM_RegDest==IDEX_Rs)&& (MEMWB_RegDest !=IDEX_Rs))
    begin
        assign ForwardA=2'b01;
    end
    else if ((MEMWB_RegWrite!=0) && (MEMWB_RegDest!=0) && (EXMEM_RegDest!= IDEX_Rs)&&(MEMWB_RegDest==IDEX_Rs))
    begin 
        assign ForwardA=2'b10;
    end
    else if ((MEMWB_RegWrite!=0) && (MEMWB_RegDest!=0) && (MEMWB_RegDest==IDEX_Rs))
    begin 
        assign ForwardA=2'b10;
    end
    else
    begin
        assign ForwardA=2'b00;
    end
    
    
    //assigning ForwardB
    if ((EXMEM_RegWrite!=0)&&(EXMEM_RegDest!=0)&&(EXMEM_RegDest==IDEX_Rt)&&(MEMWB_RegDest==IDEX_Rt))
    begin
        assign ForwardB=2'b01;
    end
    else if((EXMEM_RegWrite!=0)&&(EXMEM_RegDest!=0)&&(EXMEM_RegDest==IDEX_Rt)&& (MEMWB_RegDest !=IDEX_Rt))
    begin
        assign ForwardB=2'b01;
    end
    else if ((MEMWB_RegWrite!=0) && (MEMWB_RegDest!=0) && (EXMEM_RegDest!= IDEX_Rt)&&(MEMWB_RegDest==IDEX_Rt))
    begin 
        assign ForwardB=2'b10;
    end
    else
    begin
        assign ForwardB=2'b00;
    end
    
    
    
    
    
    
    
    
    
    
    end
    
endmodule
