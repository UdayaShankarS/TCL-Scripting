#Written by: Udaya Shankar S
#Dated: 8.11.2022
#TCL script to pick two elements (integers) simultaneously in list and display the largest among them, iterate throughout all the elements in the list
#Version:1.0

set in {a z d e f x y}
#set in {20 12 5 71 35}
set l [llength $in]
#puts [scan format %c x]
for {set i 0} {$i <= $l} { incr i} {
    if { [scan format %c x] == 1 }  {
        if {[lindex $in $i] > [lindex $in $i+1]} {
         puts [lindex $in $i]
        } else {
          puts [lindex $in $i+1]
        }      
    } else {
        if {[lindex $in $i] > [lindex $in $i+1]} {
         puts [lindex $in $i]
        } else {
          puts [lindex $in $i+1]
        } 
    }
}


