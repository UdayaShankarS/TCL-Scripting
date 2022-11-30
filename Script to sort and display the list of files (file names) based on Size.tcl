#Written by: Udaya Shankar S
#Dated: 3.10.2022
# TCL Script to sort and display the list of files (file names) based on Size
#Version 1.0


set in [glob *]
set l [list]
foreach a $in {
	set l [append l "$a [file size $a]" " "]
}
puts $l
puts [set len [llength $l]]
foreach {i v} $l {
		# puts "$i $v"
		set array1($v) $i
}
puts [array get array1]

##Sort based on Size
puts [set val [array names array1 ]]
puts [set sv [lsort -integer $val]]
set l_value {} ; # sorted list based on size/value
foreach in $sv {
    set l_value [append l_value [array get array1 $in ] " "]
}
puts $l_value
