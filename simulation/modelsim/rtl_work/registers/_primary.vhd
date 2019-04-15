library verilog;
use verilog.vl_types.all;
entity registers is
    port(
        CLOCK_50        : in     vl_logic;
        wb              : in     vl_logic_vector(31 downto 0);
        addr_a          : in     vl_logic_vector(4 downto 0);
        addr_b          : in     vl_logic_vector(4 downto 0);
        dst             : in     vl_logic_vector(4 downto 0);
        data_a          : out    vl_logic_vector(31 downto 0);
        data_b          : out    vl_logic_vector(31 downto 0);
        reg_write       : in     vl_logic
    );
end registers;
