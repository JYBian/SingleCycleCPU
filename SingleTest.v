`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:02:19 11/17/2017
// Design Name:   SingleCycleCPU
// Module Name:   C:/Users/Zijian Sui/Desktop/SingleCycleCPU/SingleCycleCPU/SingleTest.v
// Project Name:  SingleCycleCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SingleCycleCPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SingleTest;

	// Inputs
	reg clock;

	// Outputs
	wire RegDst;
	wire Jump;
	wire Branch;
	wire Branch2;
	wire MemRead;
	wire MemtoReg;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;
	wire zero;
	wire sel;
	wire [3:0] fourzero;
	wire [3:0] ALUControl;
	wire [31:0] pcIn;
	wire [31:0] pcOut;
	wire [31:0] Rdata1;
	wire [31:0] Rdata2;
	wire [31:0] In2;
	wire [31:0] Extended;
	wire [31:0] Wdata;
	wire [31:0] result;
	wire [31:0] Rdata;
	wire [31:0] shifted32;
	wire [31:0] addedPC;
	wire [31:0] beqaddr;
	wire [31:0] JumpAddress;
	wire [31:0] beqmuxedaddr;
	wire [2:0] ALUOp;
	wire [25:0] I250;
	wire [5:0] I3126;
	wire [5:0] I50;
	wire [4:0] I2521;
	wire [4:0] I2016;
	wire [4:0] I1511;
	wire [4:0] Wreg;
	wire [15:0] I150;
	wire [27:0] shifted26;

	// Instantiate the Unit Under Test (UUT)
	SingleCycleCPU uut (
		.clock(clock), 
		.RegDst(RegDst), 
		.Jump(Jump), 
		.Branch(Branch), 
		.Branch2(Branch2), 
		.MemRead(MemRead), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.ALUSrc(ALUSrc), 
		.RegWrite(RegWrite), 
		.zero(zero), 
		.sel(sel), 
		.fourzero(fourzero), 
		.ALUControl(ALUControl), 
		.pcIn(pcIn), 
		.pcOut(pcOut), 
		.Rdata1(Rdata1), 
		.Rdata2(Rdata2), 
		.In2(In2), 
		.Extended(Extended), 
		.Wdata(Wdata), 
		.result(result), 
		.Rdata(Rdata), 
		.shifted32(shifted32), 
		.addedPC(addedPC), 
		.beqaddr(beqaddr), 
		.JumpAddress(JumpAddress), 
		.beqmuxedaddr(beqmuxedaddr), 
		.ALUOp(ALUOp), 
		.I250(I250), 
		.I3126(I3126), 
		.I50(I50), 
		.I2521(I2521), 
		.I2016(I2016), 
		.I1511(I1511), 
		.Wreg(Wreg), 
		.I150(I150), 
		.shifted26(shifted26)
	);

	initial begin
		// Initialize Inputs
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always#50 clock=~clock;
initial#3000 $stop;      
endmodule

