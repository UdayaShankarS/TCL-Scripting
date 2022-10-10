Written by: Udaya Shankar S
dated: 25.9.2022
Version: 1.0

# Write a TCL script to remove the vowels in the inut string
# Find also positions of vowels in the input string

##Method 1:

set v {e a i o u}
set str "encyclopedia" ; #input string is "encyclopedia"
set l [llength $v]
set m $str
for {set j 0} { $j < $l } { incr j} {
    puts [set r1 [string first [lindex $v $j] $str]]
    puts [set r2 [string last [lindex $v $j] $str] ]
    set m [string replace $m $r1 $r1 " "]
    set m [string replace $m $r2 $r2 " "]
}
# puts $m
# puts [concat $m "" ""]
# puts [string trim $m]
puts [string map {" " ""} $m];


##Method 2:

puts [string map {a "" e "" i "" o "" u ""} "encylcopedia"]