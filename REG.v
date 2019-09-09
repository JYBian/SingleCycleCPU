`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:56:08 11/17/2017 
// Design Name: 
// Module Name:    REG 
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
module REG (Rreg1, Rreg2, Wreg, RegWrite, Wdata, Rdata1, Rdata2,clock);
input [4:0] Rreg1, Rreg2;
input [31:0] Wdata;
input RegWrite,clock;
input [4:0]Wreg;
output [31:0] Rdata1, Rdata2;
reg [31:0] register [0:31];
integer i;
initial begin
for (i=0;i<32;i=i+1)
begin
register[i]=32'b0;
end
end
always @(posedge clock) begin
if (RegWrite == 1) 
register[Wreg] <= Wdata;
end
assign  Rdata1 = register[Rreg1];
assign Rdata2 = register[Rreg2];
endmodule
