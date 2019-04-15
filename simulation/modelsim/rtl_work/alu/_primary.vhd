library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        data_a          : in     vl_logic_vector(31 downto 0);
        data_b          : in     vl_logic_vector(31 downto 0);
        alu_result      : out    vl_logic_vector(31 downto 0);
        alu_select      : in     vl_logic_vector(3 downto 0)
    );
end alu;
