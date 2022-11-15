#Written by : Udaya Shankar S
#dated: 11.11.2022
#TCL script to convert Binary to Hexadecimal
#Version 1.0

set a "11110101100101111"
set l [string length $a]
set b [split $a ""]
if {[expr $l%4] == 0} {
    set a  $a
} elseif {[expr $l%4] == 1} {
    set c [concat "000" "$b" "\b"]
    set a [regsub -all " " $c ""]
    #puts $c;puts $a ; 
} elseif {[expr $l%4] == 2} {
    set c [concat "00" "$b" "\b"]
    set a [regsub -all " " $c ""]
    #puts $c;puts $a ; 
} elseif {[expr $l%4] == 3} {
    set c [concat "0" "$b" "\b"]
    set a [regsub -all " " $c ""]
    #puts $c;puts $a ; 
} else {
  continue
}
set in [string range $a 0 end]
set inl [string length $in]
set h [list]
for { set i 0 } { $i < $inl } {incr i 4} {
  set x [string range $in $i [expr $i+3 ] ] 
  if {[string equal $x "0000"]} {
          set t "0"
  } elseif {[string equal $x "0001"]} {
          set t "1"
  } elseif {[string equal $x "0010" ] } {
          set t "2"
  } elseif {[string equal $x "0011" ]} {
          set t "3"
  } elseif {[string equal $x "0100" ]} {
          set t "4"
  } elseif {[string equal $x "0101" ] } {
          set t "5"
  } elseif {[string equal $x "0110" ] } {
          set t "6"
  } elseif {[string equal $x "0111" ] } {
          set t "7"
  } elseif {[string equal $x "1000" ] } {
          set t "8"
  } elseif {[string equal $x "1001" ] } {
          set t "9"
   } elseif { [string equal $x "1010" ]} {
          set t "A"
  } elseif {[string equal $x "1011" ] } {
          set t "B"
  } elseif { [string equal $x "1100" ] } {
          set t "C"
  } elseif {[string equal $x "1101" ]} {
          set t "D"
  } elseif {[string equal $x "1110" ] } {
          set t "E"
  } elseif {[string equal $x "1111" ] } {
          set t "F"
  } else {
          continue
  } 
set h [append h "$t" ""]
}
puts " Hexedecimal Equivalent of $a: [regsub -all " " $h ""]"
