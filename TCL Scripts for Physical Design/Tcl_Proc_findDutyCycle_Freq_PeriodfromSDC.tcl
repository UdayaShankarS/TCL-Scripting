# Written by: Udaya Shankar S
# Dated: 18.11.2022
# TCL procedure to find the duty cycle, frequency and time period from the SDC constrants file
# Version:1.0

proc DCFTP {in} {
	set inf [open "$in" r]
	while {[gets $inf line] >= 0} {
		if {[regexp -all "period*" $line m] | [regexp -all "waveform*" $line n]} {
			set x [regexp -all {[^period*]+\w+\w+[*.0]+\w} $line match2 ];
			puts "Time Period: $match2 ns"
			puts "Frequency : [expr 1/$match2] GHz"
			#set y [regexp -all {\d[^0.]+[*.0]\d} $line match3 ];
			set y [regexp -all {\d[^waveform]+[*.0]\d} $line match3 ];
			puts "$match3" ; 
			set e [expr [lindex $match3 0]+[lindex $match3 1]]
			set D [expr $e/$match2 ]
			puts "Duty Cycle: [expr $D*100]%"
			break
		} else {}
	}
	close $inf
}

DCFTP "sample_SDC.sdc"

# sample Output
# Time Period:  16.0 ns
# Frequency : 0.0625 GHz
# 0.0 8.0
# Duty Cycle: 50.0%
