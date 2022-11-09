#Written by: Udaya Shankar S
#Dated: 8.11.2022
#TCL script to find the length of the list without using "llength"
#Version:1.0

set in {a z d e f x y}
puts "Length of the List : [expr 1+[lsearch $in [lrange $in end end]]]"


