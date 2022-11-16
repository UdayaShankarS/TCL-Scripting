#Written by : Udaya Shankar S
#dated: 13.11.2022
#TCL script to search for the value with a particular [E.g., "e" ] character present inside the dictionary
#Version 1.0

# Method1; the values with Character "a" are searched 
set colours [dict create 1 "black" 4 "white" 2 "brown" 0 "green" 5 orange]
puts [set v [dict get $colours ]]
foreach {x} $v {
    #puts $x
    if {[regexp "a" $x match]} {
          puts [dict filter $colours value $x]
    } else {
        continue
    }
}

# Method 2 ; the values with Character "a" are searched 
#set colours [dict create 1 "black" 4 "white" 2 "brown" 0 "green" 5 orange]
dict for {k v} $colours {
  if {[string match "*a*" $v] } {   
        puts "$k $v"
  } else  {
    continue
  }
}
