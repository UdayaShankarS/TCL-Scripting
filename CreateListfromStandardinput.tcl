# written by: Udaya Shankar S
# Date: 1.12.2022
# TCL procedure to create a list by read an element at a time from the user (during execution of the script) and also simultaneously display the number of elements in the list without using # llength command.
# version 1.0


proc list_create {} {
 set out_list {}
 puts "Enter Element to be Added to List"
 set i 0
 while {1} {
  set in [gets stdin]
  set out_list [lappend out_list $in]
  incr i
  if {[regexp -all -- {\s+} $in ] == 1} {
      break ; # if Space character came it breaks
  }
 }
 puts "Final List:[lrange $out_list 0 end-1]"
 puts "No of Elements in List: [expr $i-1]"
}

list_create

  #  if { [regexp -all { ^[A-Za-z]+$ } $in ] == 1} {
