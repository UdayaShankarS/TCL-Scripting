#Written by: Udaya Shankar S
#Dated: 3.10.2022
# TCL script to display the list of empty folders(directories) and files.
#Version 1.0

set f [glob *]
puts $f
set  l_dir {}
set  l_files {}
foreach in $f {
  if {[ file isdirectory $in] == 1 } {	
	if {[file size $in] == 0 } {
		set l_dir [lappend l_dir $in]
	} else {
		continue
	}
  } else  {
	if {[file size $in] == 0 } {
		set l_files [lappend l_files $in]
	} else {
		continue
	}
  }
}
puts "Empty Directories: $l_dir"
puts "Empty files: $l_files"
