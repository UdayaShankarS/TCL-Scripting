#Written by: Udaya Shankar S
#Dated: 3.10.2022
# Tcl procedure to display only the random generated numbers comes within the specified range
#Version 1.0

# Method 1
proc random {} {
set a [expr rand()*10] 
if { 0 <= $a && $a <= 8} {
  puts $a
}

}
random

# Method 2

proc min_max {min max} {
      #set a [expr { rand() }]
      set a [ expr {(rand())*25 }]
      puts "Min: $min Max: $max"
      set a [expr int ($a)]
  if { [expr $min <= $a] && [expr $a <= $max ] } {
          puts "[expr int ($a)] is within $min & $max"
  } else {
          puts "$a is not within $min & $max"
  }
}
min_max 10 100
