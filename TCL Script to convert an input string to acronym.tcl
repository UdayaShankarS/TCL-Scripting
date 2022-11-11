#Written by : Udaya Shankar S
#dated: 9.11.2022
#TCL Script to convert an input string to acronym.
#Version 1.0

set in "Tool Command Language"
set a [split $in]
puts $a
set vars [list]
for {set i 0} { $i < [llength $a] } { incr i } {
    puts [set x [lindex $a $i]]
    puts [set y [string index $x 0]]
    set vars [append var $y ""]
}
puts $vars
