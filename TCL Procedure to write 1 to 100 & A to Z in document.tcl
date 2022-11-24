# Written by: udaya Shankar S
# Date: 20.11.2022
# TCL Procedure to write 1 to 100 & A to Z in document
# Version: 1.0

proc writeAZ {} {
set fout [open "output1.txt" w+]
set in 0
	while { $in <= 100} {
		puts $fout "$in"
		incr in
	}
set in1 A
puts $fout "$in1"
	while { [string compare "$in1" "Z"] != 0 } {
		scan "$in1" %c m
		set g [ format %c [incr m]]
    		set in1 "$g"
    		puts $fout "$g"
	}
close $fout
}

writeAZ 


