#Written by: Udaya Shankar S
#Dated: 8.11.2022
#TCL script to print the items in the list in the reverse order without using "lreverse" 
#Version:1.0

set in {a z d e f}
set l [llength $in]
set fl [list]
for {set i [expr $l-1]} {$i >= 0 } {incr i -1} {
    set m [lindex $in $i] 
    set fl [append fl $m " "]
}
puts $fl