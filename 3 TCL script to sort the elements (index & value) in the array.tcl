#written by: Udaya Shankar S
#Dated: 7.11.2022
#TCL script to sort the elements (index & value) in the array
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
puts [set z [lsort -integer $m]]
puts [set len [llength $m]]
set l [list]
for {set i 0 } {$i < $len} {incr i } {
    set k [array get lan [lindex $z $i]]
    set l [append l $k " "]
}
puts $l