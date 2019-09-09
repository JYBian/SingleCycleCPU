`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:59:19 11/17/2017 
// Design Name: 
// Module Name:    DMem 
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
module DMem (Wdata, Addr, MemRead, MemWrite, RData,clock);
input [31:0] Wdata;
input [31:0] Addr;
input MemRead, MemWrite,clock;
output [31:0] RData;
reg [31:0] memory [0:255];
reg [31:0] RData;
integer i;
initial begin
for (i=0;i<256;i=i+1)
begin
memory[i]=32'b0;
end	
end
always @(posedge clock) 
begin
if (MemWrite) 
memory[Addr]<=Wdata;
end
always@(*)begin
if (MemRead) 
RData<= memory[Addr];
else
RData<=32'b0;
end
endmodule 