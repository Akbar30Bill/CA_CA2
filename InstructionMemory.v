`timescale 1ns / 1ns
module InstructionMemory(address,instruction);
  input[15:0] address;
  output[8:0]instruction;
  reg [8:0]Memory[0:1024];
  assign instruction = Memory[address];
endmodule
