library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Instruction     : in     vl_logic_vector(15 downto 0);
        RegisterWriteDataEnable: out    vl_logic;
        LoadPcEnable    : out    vl_logic;
        SelectBranchPc  : out    vl_logic;
        SelectJumpPc    : out    vl_logic;
        Window          : out    vl_logic_vector(1 downto 0);
        SelectImm       : out    vl_logic;
        MemoryWriteDataEnable: out    vl_logic
    );
end Controller;
