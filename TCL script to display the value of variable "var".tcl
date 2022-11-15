#Written by : Udaya Shankar S
#dated: 11.11.2022
#TCL script to display the value of variable "var", since value "a" is defined in variable "var" and value of "11" is defined in variable a (no additional variables have to used).
#Version 1.0

set a 11
set var a
eval puts $$var    
puts [set $var]  
puts [set [set var]]
