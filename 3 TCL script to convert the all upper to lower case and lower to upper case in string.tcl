#Written by: Udaya Shankar S
#Dated: 8.11.2022
#TCL script to convert the all upper to lower case and lower to upper case in string
#Version:1.0

set in "Tcl Scripting"
set l [list]
for {set i 0} {$i < [string length $in]} { incr i} {
  set x [string index $in $i]
  if {[string match {[a-z]} $x]} {
        set m [string toupper $x]
        set l [append l $m ""]
  } else {
        set n [string tolower $x] 
        set l [append l $n ""]
  }
}
puts $l