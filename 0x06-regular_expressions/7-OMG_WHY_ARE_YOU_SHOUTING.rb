#!/usr/bin/env ruby

# Check if there is exactly one command-line argument
if ARGV.length == 1
  # Define the regular expression pattern for matching capital letters
  pattern = /[A-Z]/

  # Get the argument passed from the command line
  input_string = ARGV[0]

  # Use the regular expression to find all capital letters in the input string
  matches = input_string.scan(pattern)

  # Join the matched capital letters and print them
  result = matches.join
  puts result
else
  # Print an error message if the number of arguments is incorrect
  puts "Usage: ./7-OMG_WHY_ARE_YOU_SHOUTING.rb <input_string>"
end
