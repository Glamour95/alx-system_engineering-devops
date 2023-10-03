#!/usr/bin/env ruby

# Check if there is exactly one command-line argument
if ARGV.length == 1
  # Define the regular expression pattern
  pattern = /^h.n$/

  # Get the argument passed from the command line
  input_string = ARGV[0]

  # Use the regular expression to match the input string
  match = pattern.match(input_string)

  # Check if there is a match
  if match
    # Print an empty line if there is a match
    puts ""
  else
    # Print the input string if no match is found
    puts input_string
  end
else
  # Print an error message if the number of arguments is incorrect
  puts "Usage: ./5-beginning_and_end.rb <input_string>"
end
