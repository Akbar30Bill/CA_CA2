`timescale 1ns / 1ns
module Controller(clk,rst,Instruction,RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,Window,SelectImm,MemoryWriteDataEnable);
  input             clk,rst;
  input      [15:0] Instruction;
  output reg        RegisterWriteDataEnable,LoadPcEnable,SelectBranchPc,SelectJumpPc,MemoryWriteDataEnable,SelectImm;
  output reg [1 :0] Window;
  always @(posedge clk , posedge rst) begin
    case(Instruction[15:12])
      4'b0000:begin
        //LOAD
        begin RegisterWriteDataEnable<=1;
              LoadPcEnable<=0;
              SelectBranchPc<=0;
              SelectJumpPc<=0;
              MemoryWriteDataEnable<=0;
              SelectImm<=0;
              end
      end
      4'b0001:begin
        //STORE
        MemoryWriteDataEnable<=1;
        RegisterWriteDataEnable<=0;
        LoadPcEnable<=0;
        SelectBranchPc<=0;
        SelectJumpPc<=0;
        SelectImm<=0;
      end
      4'b0010:begin
        //JUMP
        begin LoadPcEnable<=1;SelectJumpPc<=1;
              RegisterWriteDataEnable<=0;
              SelectBranchPc<=0;
              MemoryWriteDataEnable<=0;
              SelectImm<=0;
              end
      end
      4'b0100:begin
        //BRANCH_Z
        begin LoadPcEnable<=1;SelectBranchPc<=1; end
      end
      4'b1000:begin
        //ALU func:
        case(Instruction[7:0])
          8'b00000001:begin RegisterWriteDataEnable<=1;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b00000010:begin RegisterWriteDataEnable<=1;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b00000100:begin RegisterWriteDataEnable<=1;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b00001000:begin RegisterWriteDataEnable<=1;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b00010000:begin RegisterWriteDataEnable<=1;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b00100000:begin RegisterWriteDataEnable<=1;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b01000000:begin RegisterWriteDataEnable<=0;
                            LoadPcEnable<=0;
                            SelectBranchPc<=0;
                            SelectJumpPc<=0;
                            MemoryWriteDataEnable<=0;
                            SelectImm<=0;
                            end
          8'b10000000:begin Window<=0; end
          8'b10000001:begin Window<=1; end
          8'b10000010:begin Window<=2; end
          8'b00000011:begin Window<=3; end
        endcase
      end
      4'b1100:begin
        //ADDi
        begin RegisterWriteDataEnable<=1;SelectImm<=1;
              LoadPcEnable<=0;
              SelectBranchPc<=0;
              SelectJumpPc<=0;
              MemoryWriteDataEnable<=0;
              end
      end
      4'b1101:begin
        //SUBi
        begin RegisterWriteDataEnable<=1;
              LoadPcEnable<=0;
              SelectBranchPc<=0;
              SelectJumpPc<=0;
              MemoryWriteDataEnable<=0;
              SelectImm<=0;
              end
      end
      4'b1110:begin
        //ANDi
        begin RegisterWriteDataEnable<=1;
              LoadPcEnable<=0;
              SelectBranchPc<=0;
              SelectJumpPc<=0;
              MemoryWriteDataEnable<=0;
              SelectImm<=0;
              end
        end
      4'b1111:begin
        //ORi
        begin RegisterWriteDataEnable<=1;
              LoadPcEnable<=0;
              SelectBranchPc<=0;
              SelectJumpPc<=0;
              MemoryWriteDataEnable<=0;
              SelectImm<=0;
              end
      end
    endcase
  end
endmodule
// ehsan , alizak , akbar , anahid , negin , mahya , erfan , sina , rasta , alik , prisa , majed , spehr
