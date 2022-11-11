#Written by : Udaya Shankar S
#dated: 9.11.2022
#TCL script to find the difference between the two lists
#Version 1.0

set a { 10 12 14 16 18 20 21}
set b { 10 12 15 16 18 20 25 27 28}
if {[llength $a] == [llength $b]} {
  for {set i 0 } {$i < [llength $a] } {incr i} {
      for {set j 0} {$j < [llength $b] } {incr j} {
            if {[lindex $a $i] == [lindex $b $i]} {
                puts "Lists a & b are equal at $i"
                break
            } else {
                puts "Lists a & b are notequal at $i" 
                break
            }
      }
  }
} elseif {[llength $a] > [llength $b]} {
  for {set i 0 } {$i < [llength $a] } {incr i} {
      for {set j 0} {$j < [llength $a] } {incr j} {
            if {[lindex $a $i] == [lindex $b $i]} {
                puts "Lists a & b are equal at $i"
                break
            } else {
                puts "Lists a & b are notequal at $i" 
                break
            }
      }
  }
} elseif {[llength $a] < [llength $b]} {
  for {set i 0 } {$i < [llength $b] } {incr i} {
      for {set j 0} {$j < [llength $b] } {incr j} {
            if {[lindex $a $i] == [lindex $b $i]} {
                puts "Lists a & b are equal at $i"
                break
            } else {
                puts "Lists a & b are notequal at $i"   
                break
            }
      }
  }
} else {
    puts "Lists a and b are different"
}
