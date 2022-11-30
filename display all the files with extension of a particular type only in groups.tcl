#written by: Udaya Shakar S
#Dated: 28.11.2022
#TCL script to display all the files with extension of a particular type only in groups(*.txt or *.tcl or *.doc or *.csv) in a folder
#Version 1.0


set f [glob *]
puts $f
set f1 {}
foreach in $f {
	set f1 [lappend f1 "[ file extension $in ]" ]
} 
puts [set ext [lsort -unique $f1]]
puts [set len [llength $ext]]

foreach i $ext {
  puts "$i files: [glob "*$i"]"
}
 
