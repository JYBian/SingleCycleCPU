`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:57:18 11/17/2017 
// Design Name: 
// Module Name:    MUX5 
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
module MUX5 (In1, In2, Ctrl, Out);
input [4:0] In1, In2; 
input Ctrl; 
output [4:0] Out;
reg[4:0]Out;
always@(*)begin
if (Ctrl)
begin
Out <= In2;
end
else if(!Ctrl)
begin
Out <= In1;
end
end
endmodule
