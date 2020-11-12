library verilog;
use verilog.vl_types.all;
entity Top_DAC_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Top_DAC_vlg_sample_tst;
