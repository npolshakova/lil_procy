library verilog;
use verilog.vl_types.all;
entity imm_gen is
    port(
        inst            : in     vl_logic_vector(31 downto 0);
        imm_sel         : in     vl_logic_vector(2 downto 0);
        imm             : out    vl_logic_vector(31 downto 0)
    );
end imm_gen;
