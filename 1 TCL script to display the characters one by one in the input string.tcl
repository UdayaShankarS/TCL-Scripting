#Written by: Udaya Shankar S
#Dated: 8.11.2022
#TCL script to display the characters one by one in the input string [Eg.: "SCRIPTING"].
#Version:1.0

set a "TCL SCRIPTING"
for {set i 0} {$i < [string length $a]} {incr i} {
    puts [string index $a $i]
}