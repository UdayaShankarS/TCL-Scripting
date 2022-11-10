#Written by: Udaya Shankar S
#Dated:8.11.2022
#TCL Scripting for finding length of List without "llength"
#Verion 1.0

set l {a b c d e x y z}
set c 0
foreach i $l {
    incr c
}
puts "Length of List:$c"
