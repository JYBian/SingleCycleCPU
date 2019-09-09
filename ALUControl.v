`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:53:58 11/17/2017 
// Design Name: 
// Module Name:    ALUControl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALUControl(funct,ALUOp,control);
input [5:0]funct;
input [2:0]ALUOp;
output [3:0]control;
reg [3:0]control;
always@(ALUOp or funct)
begin
if (ALUOp==3'b010 && funct==6'b100000)control<=4'b0010; 
else if (ALUOp==3'b010 && funct==6'b100010) control<=4'b0110; 
else if (ALUOp==3'b010 && funct==6'b100100) control<=4'b0000; 
else if (ALUOp==3'b010 && funct==6'b100101)control<=4'b0001; 
else if (ALUOp==3'b010 && funct==6'b101010) control<=4'b0111; 
else if (ALUOp==3'b000) control<=4'b0010; 
else if (ALUOp==3'b001) control<=4'b0110; 
else if (ALUOp==3'b011) control<=4'b0010; 
else if (ALUOp==3'b100)control<=4'b0000; 
else control<=4'b1111; 
end
endmodule