library verilog;
use verilog.vl_types.all;
entity control is
    port(
        inst            : in     vl_logic_vector(31 downto 0);
        pc_src          : out    vl_logic;
        branch_unsigned : out    vl_logic;
        imm_sel         : out    vl_logic_vector(2 downto 0);
        reg_write       : out    vl_logic;
        branch_eq       : in     vl_logic;
        branch_lt       : in     vl_logic;
        b_sel           : out    vl_logic;
        a_sel           : out    vl_logic;
        alu_sel         : out    vl_logic_vector(3 downto 0);
        mem_write       : out    vl_logic;
        wb_sel          : out    vl_logic_vector(1 downto 0)
    );
end control;
