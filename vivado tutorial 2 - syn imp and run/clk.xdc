# sequential logic @100MHZ
# mininum input delay is to detect hold time violation, depends on your selected chip
# maximum input delay is to detect setup time violation, please addup the pcb and input delay
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
set_input_delay -clock clk -rise -min -add_delay 0.400 [get_ports * -filter {DIRECTION == IN && NAME !~ "clk"}]
set_input_delay -clock clk -rise -max -add_delay 0.500 [get_ports * -filter {DIRECTION == IN && NAME !~ "clk"}]

## pure combinational logic @100MHZ
## pure combinational logic needs both input and output delay to generate timing report after synthesis
#create_clock -name "vclk" -period 10.000 -waveform {0.000 5.000}
#set_input_delay -clock vclk -add_delay -max -rise 0.1  [get_ports * -filter {DIRECTION == IN}]
#set_input_delay -clock vclk -add_delay -min -rise 0.1  [get_ports * -filter {DIRECTION == IN}]
#set_output_delay -clock vclk -add_delay -max -rise 0.1 [get_ports * -filter {DIRECTION == OUT}]
#set_output_delay -clock vclk -add_delay -min -rise 0.1 [get_ports * -filter {DIRECTION == OUT}]


