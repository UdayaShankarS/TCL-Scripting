# written by: Udaya Shankar S
# Date: 1.12.2022
# TCL script to swap 3 and 4 in the following string "19230401" (using regular expressions)
# version 1.0

#Method1
set str "19230401"
puts "Input String: $str"
regsub -all {[3*]+[4*]} $str {4+3} newstr
puts $newstr

#Method 2
set str "19230401"
puts "Input String: $str"
set str1 [split $str ""]
#puts $str1
set newstr {}
foreach x $str1 {
  if {$x == 3} {
        regsub -all "3" $x "4" y
        set newstr [append newstr $y ""]
  } elseif {$x == 4} {
        regsub -all "4" $x "3" y
        set newstr [append newstr $y ""]
  } else {
        set newstr [append newstr $x ""]
  }
}
puts "Output String: $newstr"
##Using stringMap
puts [string map {3 4 4 3} $str]

#Method 3 -- string Map
puts [string map {3 4 4 3} $str]

