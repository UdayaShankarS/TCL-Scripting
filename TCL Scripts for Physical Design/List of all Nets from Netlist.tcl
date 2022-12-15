#Written by: Udaya Shankar S
#Dated: 18.11.2022
#TCL Script to Fine the total number  and list of wires/nets in Verilog Netlist
#Version:1.0

proc NoofNes {in} {
	set inf [open $in r]
	set io {}
	while {[gets $inf line] >= 0} {
		if {[regexp -all "input*" $line m]} {
			set x [regexp -all {[^input]+\w+[^:;]+} $line match2 ];
			#puts $match2
			set io [append io "$match2" ","]
		} elseif {[regexp -all "output*" $line n]} {
			set y [regexp -all {[^output]+\w+[^:;]+} $line match3 ];
			#puts $match3;
			set io [append io "$match3" ","]
		} elseif {[regexp -all "wire*" $line o]} {
			set z [regexp -all {[^wire]+\w+[^:;]+} $line match1 ]
			#puts $match1;
			set io [append io "$match1" ","]
		} else {}
	}
	puts "List of Nets: $io"
	puts "Total No. of Nets: [llength $io]"
	close $inf
}

NoofNes "mycode.v"
