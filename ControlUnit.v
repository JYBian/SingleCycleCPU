`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:53:33 11/17/2017 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(op,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch2,Jump,ALUOp);
input [5:0]op;
output RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch2,Jump;
output [2:0]ALUOp;
reg RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch2,Jump;
reg [2:0]ALUOp;
always@(*)
case(op)
6'b000000:begin RegDst<=1;ALUSrc<=0;MemtoReg<=0;RegWrite<=1;MemRead<=0;MemWrite<=0;Branch<=0;Branch2=0;Jump<=0;ALUOp[2]=0;ALUOp[1]<=1;ALUOp[0]<=0;end
6'b100011:begin RegDst<=0;ALUSrc<=1;MemtoReg<=1;RegWrite<=1;MemRead<=1;MemWrite<=0;Branch<=0;Branch2=0;Jump<=0;ALUOp[2]=0;ALUOp[1]<=0;ALUOp[0]<=0;end
6'b101011:begin RegDst<=0;ALUSrc<=1;MemtoReg<=0;RegWrite<=0;MemRead<=0;MemWrite<=1;Branch<=0;Branch2=0;Jump<=0;ALUOp[2]=0;ALUOp[1]<=0;ALUOp[0]<=0;end
6'b000100:begin RegDst<=0;ALUSrc<=0;MemtoReg<=0;RegWrite<=0;MemRead<=0;MemWrite<=0;Branch<=1;Branch2=0;Jump<=0;ALUOp[2]=0;ALUOp[1]<=0;ALUOp[0]<=1;end
6'b000101:begin RegDst<=0;ALUSrc<=0;MemtoReg<=0;RegWrite<=0;MemRead<=0;MemWrite<=0;Branch<=0;Branch2=1;Jump<=0;ALUOp[2]=0;ALUOp[1]<=0;ALUOp[0]<=1;end
6'b000010:begin RegDst<=0;ALUSrc<=0;MemtoReg<=0;RegWrite<=0;MemRead<=0;MemWrite<=0;Branch<=0;Branch2=0;Jump<=1;ALUOp[2]=1;ALUOp[1]<=1;ALUOp[0]<=1;end
6'b001000:begin RegDst<=0;ALUSrc<=1;MemtoReg<=0;RegWrite<=1;MemRead<=0;MemWrite<=0;Branch<=0;Branch2=0;Jump<=0;ALUOp[2]=0;ALUOp[1]<=1;ALUOp[0]<=1;end
6'b001100:begin RegDst<=0;ALUSrc<=1;MemtoReg<=0;RegWrite<=1;MemRead<=0;MemWrite<=0;Branch<=0;Branch2=0;Jump<=0;ALUOp[2]=1;ALUOp[1]<=0;ALUOp[0]<=0;end
endcase
endmodule
