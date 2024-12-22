proc get_list_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    error "Index out of range: $index"
  }
  return [lindex $list $index]
}

set my_list {a b c d}
puts "Element at index 2: [get_list_element $my_list 2]"  ;# Output: c
puts "Element at index 5: [get_list_element $my_list 5]" ;# Error: Index out of range
puts "Element at index -1: [get_list_element $my_list -1]" ;# Error: Index out of range