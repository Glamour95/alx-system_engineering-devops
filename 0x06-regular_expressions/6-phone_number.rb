#!/usr/bin/env ruby

# Check if there is exactly one command-line argument
if ARGV.length == 1
  # Define the regular expression pattern for a 10-digit phone number
  pattern = /^[0-9]{10}$/

  # Get the argument passed from the command line
  input_string = ARGV[0]

  # Use the regular expression to match the input string
  match = pattern.match(input_string)

  # Check if there is a match
  if match
    # Print the matched string
    puts match[0]
  else
    # Print an empty line if no match is found
    puts ""
  end
else
  # Print an error message if the number of arguments is incorrect
  puts "Usage: ./6-phone_number.rb <input_string>"
end
