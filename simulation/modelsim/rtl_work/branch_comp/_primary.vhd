library verilog;
use verilog.vl_types.all;
entity branch_comp is
    port(
        data_a          : in     vl_logic_vector(31 downto 0);
        data_b          : in     vl_logic_vector(31 downto 0);
        branch_unsigned : in     vl_logic;
        branch_eq       : out    vl_logic;
        branch_lt       : out    vl_logic
    );
end branch_comp;
