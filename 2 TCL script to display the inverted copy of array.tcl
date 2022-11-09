#written by: Udaya Shankar S
#Dated: 7.11.2022
# Write a TCL script to display the inverted copy of array.
#Version 1.0

array set lan {
      21 TCL
      15 PERL
      10 JAVA
      30 C++
      20 TK
}
set m [array names lan]
puts $m
puts [set len [llength $m]]
set l [list]
for {set i $len } {$i > 0} {incr i -1} {
    set k [array get lan [lindex $m $i-1]]
    set l [append l $k " "]
}
puts $l
