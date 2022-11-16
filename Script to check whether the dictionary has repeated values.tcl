#Written by : Udaya Shankar S
#dated: 13.11.2022
#TCL Script to check whether the dictionary has repeated values
#Version 1.0

set colours [dict create 1 "black" 4 "white" 2 "brown" 0 "green" 5 blue 6 "white"]
#puts [set s [dict size $colours ] ]
puts [set v [dict values $colours]]
puts [set k [dict keys $colours]]

foreach {m} $v {
  if { [llength [lsearch -all $v $m]] > 1 } {
    puts "$m is repeated" 
    #break
  } else {
     puts "$m is not repeated" 
  }
}
