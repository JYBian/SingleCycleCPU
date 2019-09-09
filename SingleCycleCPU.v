`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:01:50 11/17/2017 
// Design Name: 
// Module Name:    SingleCycleCPU 
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
module SingleCycleCPU(clock, RegDst,Jump,Branch,Branch2,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,zero,sel,fourzero,ALUControl,pcIn,pcOut,Rdata1,Rdata2,In2,Extended,Wdata,result,Rdata,shifted32,addedPC,beqaddr,JumpAddress,beqmuxedaddr,ALUOp,I250, I3126,I50,I2521,I2016,I1511,Wreg,I150,shifted26);
input clock;
output RegDst,Jump,Branch,Branch2,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,zero,sel;
output [3:0]fourzero,ALUControl;
output  [31:0]pcIn,pcOut,Rdata1,Rdata2,In2,Extended,Wdata,result,Rdata,shifted32,addedPC,beqaddr,JumpAddress,beqmuxedaddr;
output  [2:0]ALUOp;
output  [25:0]I250;
output  [5:0]I3126,I50;
output  [4:0]I2521,I2016,I1511,Wreg;
output  [15:0] I150;
output [27:0]shifted26;
PC M1(clock,pcIn,pcOut);
IM M2(pcOut,I250,I3126,I2521,I2016,I1511,I150,I50);
ControlUnit M3(I3126,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Branch2,Jump,ALUOp);
ALUControl M4(I50,ALUOp,ALUControl);
ALU M5(Rdata1, In2, ALUControl, zero, result);
REG M6(I2521, I2016, Wreg, RegWrite, Wdata, Rdata1, Rdata2,clock);
MUX32 M7(Rdata2,Extended,ALUSrc,In2);
SExt M8(I150, Extended);
MUX5 M9(I2016,I1511,RegDst,Wreg);
DMem M10(Rdata2, result, MemRead, MemWrite, Rdata,clock);
MUX32 M11(result, Rdata,MemtoReg,Wdata);
ShiftLeft232 M12(Extended,shifted32);
assign fourzero=4'b0010;
assign addedPC=32'b00000000000000000000000000000100+pcOut;
assign beqaddr=addedPC+shifted32;
ShiftLeft2 M15(I250,shifted26);
assign JumpAddress[31:0]={addedPC[31:28], shifted26[27:0]};
MUX32 M16(addedPC,beqaddr,sel,beqmuxedaddr);
assign sel=(Branch&zero)|(Branch2&(~zero));
MUX32 M18(beqmuxedaddr[31:0],JumpAddress[31:0],Jump,pcIn);
endmodule
