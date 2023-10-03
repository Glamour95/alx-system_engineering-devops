#!/usr/bin/env ruby

# Check if there is exactly one command-line argument
if ARGV.length == 1
  # Define the regular expression pattern
  pattern = /School/

  # Get the argument passed from the command line
  input_string = ARGV[0]

  # Use the regular expression to find matches in the input string
  matches = input_string.scan(pattern)

  # Print the matches, joined by newline characters
  puts matches.join("\n")
else
  # Print an error message if the number of arguments is incorrect
  puts "Usage: ./0-simply_match_school.rb <input_string>"
end
