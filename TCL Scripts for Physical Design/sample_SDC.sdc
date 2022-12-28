set sdc_version 1.4

set_units -time ns

# Set the current design
current_design dtmf_core

# set_case_analysis 0 [get_ports test_mode]
# set_case_analysis 0 [get_ports scan_en]

create_clock -name "clk" -add -period 16.0 -waveform {0.0 8.0} [get_ports clk]

#set_false_path -from [list [get_ports reset]  [get_ports test_mode] ]
#set_false_path -hold -through [get_pins PM_INST/clk_enable]

set_input_delay 0.3 -clock [get_clocks clk] [all_inputs]

set_output_delay 0.3 -clock [get_clocks clk] [all_outputs]

set_max_fanout 15.000 [current_design]

set_max_transition 1.2 [current_design]

	 ---------	     --------
	|	  |	    |	    |	      |
	|	  |	    |	    |	      |
	|	  |	    |	    |	      |
--------	   --------	     --------
       0.0      8.0	    16.0
       Rise     Fall    period

# Duty Cycle = (PW/T)*100 %
#		= (8.0/16.0)*100 %
#		= 0.50 *100 %
#		= 50%
