#Written by: Udaya Shankar S
#dated: 25.4.2022
#Version: 1.0


#Write a TCL script to find the length of the string without using built-in command "llength"
set lin { 5 6 4 8 9 a}
puts [set z [lrange $lin end end]]
puts "The length of the list is: [expr [lsearch $lin "$z" ] + 1]"