# Tcl Word Count Bug

This repository demonstrates a subtle bug in a Tcl procedure designed to count words in a string using the `regexp` command.  The procedure works correctly for many inputs, but fails when dealing with leading/trailing spaces or multiple spaces between words.  The solution provides a more robust approach.