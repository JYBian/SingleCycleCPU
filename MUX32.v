`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:56:59 11/17/2017 
// Design Name: 
// Module Name:    MUX32 
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
module MUX32 (In1, In2, Ctrl, Out);
input [31:0] In1, In2; 
input Ctrl; 
output [31:0] Out;
assign Out=(Ctrl)?In2:In1;
endmodule

