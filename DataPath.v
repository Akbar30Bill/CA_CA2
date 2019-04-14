`timescale 1ns/1ns
module DataPath(clk, rst,RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,MemoryWriteDataEnable,SelectImm,instructionOut);
  input        clk,rst;
  input        RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,MemoryWriteDataEnable,SelectImm;
  output       instructionOut;
  wire  [1 :0] Window;
  wire  [15:0] ALUinput1,ALUinput2;
  wire         Zero;
  wire  [4 :0] ALUOperation;
  wire  [15:0] Instruction;
  wire  [15:0] MemoryWriteData, MemoryReadData;
  wire  [1 :0] ReadRegister1,ReadRegister2,WriteRegister;
  wire  [15:0] RegOut1,RegOut2;
  ALU alu(clk, rst , ALUinput1 , ALUinput2, ALUOperation, Zero, ALUoutput);
  //for b input of alu we need a mux for addi and other shits
  RegisterFile r(clk, rst, Window, RegisterWriteDataEnable, ReadRegister1, ReadRegister2, WriteRegister,RegOut1, RegOut2);
  memory MEMORY(clk, rst, ALUoutput, MemoryWriteDataEnable, MemoryReadDataEnable, MemoryWriteData, MemoryReadData);
  ALUControler alucon(clk, rst, ALUOperation, Instruction);
  InstructionMemory inmem(Address, Instruction);
  ProgramCounter pc(clk, rst, LoadPc, LoadPcEnable, Address);
  assign ALUinput1 = RegOut1;
  assign ALUinput2 = (SelectImm) ? Instruction[7:0] : RegOut2;
  assign instructionOut = Instruction;
endmodule
