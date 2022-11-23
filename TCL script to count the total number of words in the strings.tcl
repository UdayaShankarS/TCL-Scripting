#Written by : Udaya Shankar S
#dated: 8.11.2022
# TCL script to count the total number of words in the strings.
#Version 1.0

##Method1
set in "Tcl Runs on Windows, Mac OS X, Linux, and virtually every variant of unix. Event driven programming. Tcl is a cross platform language with full unicode support."
puts [set l [string length $in]]
set cnt 0
for {set i 0} {$i < $l} {incr i} {
    if { [string equal -nocase [string index $in $i] " "]  == 1 } {
        incr cnt
    } else {
        continue
    }
}
puts "No of words: [expr $cnt+1]"

##Method2
puts "No of words: [llength $in]"
