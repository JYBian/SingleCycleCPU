`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:54:35 11/17/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(In1, In2, control, zero, result);
input [31:0] In1, In2;
input [3:0] control;
output zero;
output [31:0] result;
reg [31:0] result;
reg zero;
always@(*)begin
if (!result)
begin
zero <= 1;
end
else if (result)
begin
zero <= 0;
end
end
always @(In1 or In2 or control) begin
if (control[3:0] == 4'b0000)
begin
result <= In1 & In2;
end
else if (control[3:0] == 4'b0001)
begin
result <= In1 | In2;
end
else if (control[3:0] == 4'b0010)
begin
result <= In1 + In2;
end
else if (control[3:0] == 4'b0110)
begin
result <= In1 - In2;
end
else if (control[3:0] == 4'b0111)
begin
if (In1 < In2)
begin
result <= 1;
end
else if (In1 >= In2)
begin
result <= 0;
end
end
else if (control[3:0] == 4'b1100)
begin
result <= ~ (In1 | In2);
end
else result=32'b0;
end
endmodule