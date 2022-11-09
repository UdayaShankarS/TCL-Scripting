#Written by: Udaya Shankar S
#Dated: 8.11.2022
#TCL script to display the positions of the vowels present in the input string
#Version:1.0


set in "MANPOWER"
for {set i 0} {$i < [string length $in]} { incr i} {
    if { [string equal -nocase [string index $in $i] "a"] == 1 } {
        puts "$i : [string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "e"] == 1 } {
        puts "$i: [string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "i"] == 1 } {
        puts "$i :[string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "o"] == 1 } {
        puts "$i:[string index $in $i]"
    } elseif { [string equal -nocase [string index $in $i] "u"] == 1 } {
        puts "$i:[string index $in $i]"
    } else {
        continue
    }
}