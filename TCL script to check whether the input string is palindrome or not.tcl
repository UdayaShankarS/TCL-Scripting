#Written by : Udaya Shankar S
#dated: 9.11.2022
#TCL script to check whether the input string is palindrome or not.
#Version 1.0

#Palindrome Words: redivider, deified, civic, radar, level, rotor, kayak, reviver, racecar, madam, and refer

set in "reviver"
set inr [string reverse $in]
set l [string length $in]
for {set i 0} { $i < $l } {incr i} {
  set a [string index $in $i]
  set b [string index $inr $i]
  if { [string equal -nocase $a $b ]} {
      if { $i == [expr $l-1] } {
          puts "$in is palindrome"
          break
      } else {
          continue
      }
  } else {
    puts "$in is not palindrome"
    break 
  }   
}
