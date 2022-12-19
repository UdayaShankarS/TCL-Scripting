#Written by: Udaya Shankar S
#Date:30.11.2022
# TCL Script to display the Month (December) of Calender [simple way]
#Version:1.0

set systemTime [clock seconds]

#puts [clock format $systemTime -format {Today is: %A, the %d of %B, %Y}]
#puts [clock format $systemTime -format {Today is: %A, the %d of %B, %Y}]
puts "\t\t December 2022 Time:[clock format $systemTime -format %H:%M:%S]"
puts "sun\tMon\tTue\tWed\tThurs\tFri\tSat"
set t [clock scan {12/19/2022}]
set u1 [clock scan {-18 days} -base $t]
set u2 [clock scan {-17 days} -base $t]
set u3 [clock scan {-16 days} -base $t]
set u4 [clock scan {-15 days} -base $t]
set u5 [clock scan {-14 days} -base $t]
set u6 [clock scan {-13 days} -base $t]
set u7 [clock scan {-12 days} -base $t]
set u8 [clock scan {-11 days} -base $t]
set u9 [clock scan {-10 days} -base $t]
set u10 [clock scan {-9 days} -base $t]
set u11 [clock scan {-8 days} -base $t]
set u12 [clock scan {-7 days} -base $t]
set u13 [clock scan {-6 days} -base $t]
set u14 [clock scan {-5 days} -base $t]
set u15 [clock scan {-4 days} -base $t]
set u16 [clock scan {-3 days} -base $t]
set u17 [clock scan {-2 days} -base $t]
set u18 [clock scan {-1 days} -base $t]
set u19 [clock scan {0 days} -base $t]
set u20 [clock scan {+1 days} -base $t]
set u21 [clock scan {+2 days} -base $t]
set u22 [clock scan {+3 days} -base $t]
set u23 [clock scan {+4 days} -base $t]
set u24 [clock scan {+5 days} -base $t]
set u25 [clock scan {+6 days} -base $t]
set u26 [clock scan {+7 days} -base $t]
set u27 [clock scan {+8 days} -base $t]
set u28 [clock scan {+9 days} -base $t]
set u29 [clock scan {+10 days} -base $t]
set u30 [clock scan {+11 days} -base $t]
set u31 [clock scan {+12 days} -base $t]



puts -nonewline "\t \t \t \t [clock format $u1 -format "%d"] \t [clock format $u2 -format "%d"] \t [clock format $u3 -format "%d"] \n [clock format $u4 -format "%d"] \t [clock format $u5 -format "%d"] \t [clock format $u6 -format "%d"] \t [clock format $u7 -format "%d"] \t [clock format $u8 -format "%d"] \t [clock format $u9 -format "%d"] \t [clock format $u10 -format "%d"] \n [clock format $u11 -format "%d"] \t [clock format $u12 -format "%d"] \t [clock format $u13 -format "%d"] \t [clock format $u14 -format "%d"] \t [clock format $u15 -format "%d"] \t [clock format $u16 -format "%d"] \t [clock format $u17 -format "%d"] \n [clock format $u18 -format "%d"] \t [clock format $u19 -format "%d"] \t [clock format $u20 -format "%d"] \t [clock format $u21 -format "%d"] \t [clock format $u22 -format "%d"] \t [clock format $u23 -format "%d"] \t [clock format $u24 -format "%d"] \n [clock format $u25 -format "%d"] \t [clock format $u26 -format "%d"] \t [clock format $u27 -format "%d"] \t [clock format $u28 -format "%d"] \t [clock format $u29 -format "%d"] \t [clock format $u30 -format "%d"] \t [clock format $u31 -format "%d"]\n"

# SampleOutput
#         December 2022 Time:11:24:02
#sun      Mon     Tue     Wed     Thurs   Fri    Sat
#                                 01      02      03 
# 04      05      06      07      08      09      10 
# 11      12      13      14      15      16      17 
# 18      19      20      21      22      23      24 
# 25      26      27      28      29      30      31

