#Written by: Udaya Shankar S
#Dated: 3.10.2022
# Tcl procedure to display only the random generated numbers comes within the specified range
#Version 1.0

proc random {} {
set a [expr rand()*10] 
if { 0 <= $a && $a <= 8} {
  puts $a
}

}
random
