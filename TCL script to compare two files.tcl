# written by: Udaya Shankar S
# Date: 1.12.2022
# TCL procedure to determine whether two files are same or different (contents inside the file) and also display the data where they differs.
# version 1.0

proc comparison {file1 file2} {
 set f [open $file1 r]
 set f1 [open $file2 r]
 #set linenumber 1
 while {![eof $f1] } {
	gets $f line
	gets $f1 line1
	#puts "$line:$line1"
	if {[string equal -nocase $line $line1] == 1 } {
		if {[eof $f1]} {
			break
		} else {
			continue
		}
	} else {
		puts "File1: $line\nFile2: $line1"
		puts "-------------"
	}
 }
}

##Same Files Comparison
#If both files are same, output shows nothing
comparison myfile.txt myfile1_same.txt
puts "#############################"
##Different File Comparison
#If both files are differnt output display the lines that are different in two files
comparison myfile.txt myfile1_diff.txt
