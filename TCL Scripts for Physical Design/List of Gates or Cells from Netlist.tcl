#Written by: Udaya Shankar S
#Dated: 18.11.2022
#TCL Script to Fine the total number and list of Gates/standard cells in Verilog Netlist
#Version:1.0

proc NoofGates {in} {
	set inf [open $in r]
	set g {}
	set linenumber 0
	while {[gets $inf line] >= 0} {
		if {[regexp -all "and+" $line m] | [regexp -all "or+" $line m] | [regexp -all "nor+" $line m] |[regexp -all "not+" $line m] } {
			set k [lindex $line 1]
			puts $k
			set g [append g "$k" " "]
		} elseif {[regexp -all "endmodule*" $line n]} {
			break
		} else {}
	#incr linenumber
	}
	puts "List of Gates: $g"
	puts "Total No. of Gates: [llength $g]"
	close $inf
}

NoofGates "mycode.v"
