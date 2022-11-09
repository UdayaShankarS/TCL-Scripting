#Written By: Udaya Shankar S
#Dated: 4.11.2022
# Version 1.0

# SCRIPT FOR DISPLAY EVEN NUMBER USING NESTED DECISION STATEMENTS - WHILE
set i 0
while { $i <= 100} {
    #incr i
    while { [expr $i%2] == 0} {
        puts $i
        incr i
    }
      incr i
}

# SCRIPT FOR DISPLAY ODD NUMBER USING NESTED DECISION STATEMENTS - WHILE
set i 0
while { $i <= 100} {
    #incr i
    while { [expr $i%2] != 0} {
        puts $i
        incr i
    }
      incr i
}