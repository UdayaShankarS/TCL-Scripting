#Written by: Udaya Shankar S
#dated: 25.3.2022
#Version: 1.0



# Write a TCL script to find the length of the string without using built-in command "string length"
set str "TCL SCRIPTING" ; # input string
puts [set k [string range $str end end]]  ; # set variable k with last element/character of the string
puts "The length of the string is: [expr [string last "$k" $str] + 1]"  ; # To fine the length of the string the position of the last charcter is incremented with 1
