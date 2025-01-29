proc count_words_robust {text} {
    # Remove leading/trailing spaces
    set text [string trim $text]
    # Replace multiple spaces with single spaces
    set text [regsub -all {\s+} $text { }]
    set words [split $text]
    return [llength $words]
}

puts [count_words_robust "  This is a sentence with spaces.  "] ;# Output: 7
puts [count_words_robust "This  is  a  sentence  with  multiple  spaces."] ;# Output: 9