# Written by: Udaya Shankar S
# Dated: 18.11.2022
# TCL procedure to check for the submodules (files) for the main modules are present are not (hierarchy check).
# Version:1.0

proc hierarchy_check {in} {
	set inf [open $in r]
	set g {}
	set linenumber 0
	while {[gets $inf line] >= 0} {
		if {[regexp -all "and+" $line m] | [regexp -all "or+" $line m] | [regexp -all "nor+" $line m] |[regexp -all "not+" $line m] } {
			set k [lindex $line 0]
			puts $k
			set g [append g "$k" " "]
		} elseif {[regexp -all "endmodule*" $line n]} {
			break
		} else {}
	#incr linenumber
	}
	puts "List of Instances/Standardcells: $g"
	puts "Total No. of Instances/Standardcells: [llength $g]"
	close $inf
	# Hierarchical checking for existence of submodules
	set mod [glob *.v]
	puts $mod
	foreach y $g {
		set x "$y.v"
		if { [llength [lsearch -all $mod $x]] >= 1 } {
			puts "$y submodule exists"
		} else {
			puts "$y submodule not available"
		}
	}
}

hierarchy_check "Netlist.v"
