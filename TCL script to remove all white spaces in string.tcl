#Written by : Udaya Shankar S
#dated: 11.11.2022
#TCL script to remove all white spaces in string.
#Version 1.0


#Method1
set str "Tcl is a cross platform language with full unicode support."
set replaced_string [regsub -all " " $str ""]
puts $replaced_string

#Method2
set new_string [string map {" " ""} $str]
puts $new_string

#Method 3
#set str "Tcl Scripting Language"
set l1 [split $str " "]
set l [llength $str]
set y [list]
for { set i 0 } { $i < $l } { incr i } {
  set x [lindex $l1 $i]
  set y [append y $x ""]
}
puts $y
