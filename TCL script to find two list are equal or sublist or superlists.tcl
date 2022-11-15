#Written by : Udaya Shankar S
#dated: 11.11.2022
#TCL script to find two list are equal or sublist or superlists.
#Version 1.0

#set A [list] ; set B [list] 
#set A [list 1 2 3] ; set B [list]
#set A [list] ; set B [list 1 2 3]
#set A [list 1 2 3] ; set B [list 1 2 3 4 5]
#set A [list 3 4 5] ; set B [list 1 2 3 4 5]
#set A [list 3 5 4] ; set B [list 1 2 3 4 5]
#set A [list 1 3 2 4 ] ; set B [list 2 3 4]
#set A [list 1 2 3 4 5] ; set B [list 2 3 4]
#set A [list 1 2 4] ; set B [list 1 2 3 4 5]
set A [list 1 2 3] ; set B [list 1 3 2]
puts "x:[set x [regsub -all " " $A ""]]" ; 
puts "y:[set y [regsub -all " " $B ""]]"
puts [set la [llength $A] ]
puts [set lb [llength $B] ]

if { $la < $lb } {
    if {[string match "*$x*" $y ] == 1} {
        puts "A is a sublist of B or B is the Superlist of A"
    } else {
        puts "A and B are not equal "
    }
} elseif { $la > $lb } {
    if {[string match "*$y*" $x] == 1} {
          puts "B is a sublist of A or A is the superlist of B"
    } else {
        puts "A and B are not equal "
    }
} elseif { $la == $lb} {
     if {[string compare $x $y] == 1} {
          puts "A and B are equal"
    } else {
        puts "A and B are not equal "
    }
}
