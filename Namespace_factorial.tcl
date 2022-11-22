Written by: Udaya Shankar S
Dated: 15.11.2022
Version: 1.0

namespace eval fact {
  variable out
}
proc fact::factorial {a} {
  set f 1
  for {set i $a } { $i > 0 } { incr i -1 } {
    set f [expr $f*$i]
    
  }
  set ::fact::out $f
}

puts [fact::factorial 10] ; #factorial of 10

