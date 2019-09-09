`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:51:07 11/17/2017 
// Design Name: 
// Module Name:    PC 
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
module PC (clk, pcIn, pcOut);
input clk;
input [31:0] pcIn;
output [31:0] pcOut;
reg [31:0] pcOut;
initial
begin
pcOut=32'b0;
end
always @(posedge clk) 
begin
pcOut = pcIn;
end     
endmodule