`timescale 1ns / 1ns
module interface(clk, rst);
  input clk,rst;
  wire  RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,MemoryWriteDataEnable,SelectImm;
  wire [15:0] Instruction;
  DataPath dp(clk, rst,RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,MemoryWriteDataEnable,SelectImm,Instruction);
  Controller cntrl(clk,rst,Instruction,RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,Window,SelectImm,MemoryWriteDataEnable);
endmodule
