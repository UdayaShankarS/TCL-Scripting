#Written by: Udaya Shankar S
#dated: 25.3.2022
#Version: 1.0



# Write a TCL script to find the length of the string without using built-in command "string length"
set str "TCL SCRIPTING"
puts [set k [string range $str end end]]
puts "The length of the string is: [expr [string last "$k" $str] + 1]"