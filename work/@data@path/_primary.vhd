library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        RegisterWriteDataEnable: in     vl_logic;
        LoadPcEnable    : in     vl_logic;
        SelectBranchPc  : in     vl_logic;
        SelectJumpPc    : in     vl_logic;
        MemoryWriteDataEnable: in     vl_logic;
        SelectImm       : in     vl_logic;
        instructionOut  : out    vl_logic
    );
end DataPath;
