library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        LOAD            : integer := 0;
        STORE           : integer := 1;
        JUMP            : integer := 2;
        BRANCH_Z        : integer := 3;
        MOVE            : integer := 4;
        ADD             : integer := 5;
        SUB             : integer := 6;
        \AND\           : integer := 7;
        \OR\            : integer := 8;
        \NOT\           : integer := 9;
        NOP             : integer := 10;
        WND0            : integer := 11;
        WND1            : integer := 12;
        WND2            : integer := 13;
        WND3            : integer := 14;
        ADDI            : integer := 15;
        SUBI            : integer := 16;
        ANDI            : integer := 17;
        ORI             : integer := 18
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Operation       : in     vl_logic_vector(4 downto 0);
        Zero            : out    vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LOAD : constant is 1;
    attribute mti_svvh_generic_type of STORE : constant is 1;
    attribute mti_svvh_generic_type of JUMP : constant is 1;
    attribute mti_svvh_generic_type of BRANCH_Z : constant is 1;
    attribute mti_svvh_generic_type of MOVE : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \OR\ : constant is 1;
    attribute mti_svvh_generic_type of \NOT\ : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of WND0 : constant is 1;
    attribute mti_svvh_generic_type of WND1 : constant is 1;
    attribute mti_svvh_generic_type of WND2 : constant is 1;
    attribute mti_svvh_generic_type of WND3 : constant is 1;
    attribute mti_svvh_generic_type of ADDI : constant is 1;
    attribute mti_svvh_generic_type of SUBI : constant is 1;
    attribute mti_svvh_generic_type of ANDI : constant is 1;
    attribute mti_svvh_generic_type of ORI : constant is 1;
end ALU;
