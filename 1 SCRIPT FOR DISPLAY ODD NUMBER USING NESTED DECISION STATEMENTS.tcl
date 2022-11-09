#Written By: Udaya Shankar S
#Dated: 4.11.2022
# Version 1.0

# SCRIPT FOR DISPLAY ODD NUMBER USING NESTED DECISION STATEMENTS - FOR LOOP
for {set a 0} {$a < 100} {incr a} {
  for {set b $a} {$b <= $a} {incr b} {
    if { [expr $a%2 !=0]} {
          puts $a
    }
  }
}

# SCRIPT FOR DISPLAY EVEN NUMBER USING NESTED DECISION STATEMENTS - FOR LOOP
for {set a 0} {$a < 100} {incr a} {
  for {set b $a} {$b <= $a} {incr b} {
    if { [expr $a%2 ==0]} {
          puts $a
    }
  }
}