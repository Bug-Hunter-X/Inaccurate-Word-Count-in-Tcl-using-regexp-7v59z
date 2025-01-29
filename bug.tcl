proc count_words {text} {
    set words [regexp -all -inline {\S+} $text]
    return [llength $words]
}

# This works fine for most cases
puts [count_words "This is a sentence."] ;# Output: 4

# But it fails if the input contains leading/trailing spaces
puts [count_words "  This is a sentence with spaces.  "] ;# Output: 4, should be 4

#This also fails if there are multiple spaces between words
puts [count_words "This  is  a  sentence  with  multiple  spaces."] ;# Output: 9, should be 9