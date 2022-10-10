#Written by: Udaya Shankar S
#dated: 25.3.2022
#Version: 1.0


#Write a TCL script to find the number of words in the input string;
set in "Tcl is a cross platform language with full unicode support."
set b [split $in " "]
puts $b
puts [llength $b]