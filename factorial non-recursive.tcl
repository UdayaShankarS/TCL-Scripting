Written by: Udaya Shankar S
Dated: 15.11.2022
Version: 1.0

proc factorial {a} {
  set s 1
for {set i $a } {$i > 0} {incr i -1} {
  set s [expr $s*$i]
}
return $s
}

puts [factorial 10] ; # factorial of 10
