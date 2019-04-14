library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Address         : in     vl_logic_vector(10 downto 0);
        WriteDataEnable : in     vl_logic;
        ReadDataEnable  : in     vl_logic;
        WriteData       : in     vl_logic_vector(16 downto 0);
        ReadData        : out    vl_logic_vector(16 downto 0)
    );
end memory;
