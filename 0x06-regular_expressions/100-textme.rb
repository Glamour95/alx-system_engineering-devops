#!/usr/bin/env ruby

# Check if there is exactly one command-line argument
if ARGV.length == 1
  # Get the argument passed from the command line
  log_entry = ARGV[0]

  # Define regular expressions to match sender, receiver, and flags
  sender_pattern = /\[from:(.*?)\]/
  receiver_pattern = /\[to:(.*?)\]/
  flags_pattern = /\[flags:(.*?)\]/

  # Extract sender, receiver, and flags using regular expressions
  sender_match = sender_pattern.match(log_entry)
  receiver_match = receiver_pattern.match(log_entry)
  flags_match = flags_pattern.match(log_entry)

  # Check if all required matches are found
  if sender_match && receiver_match && flags_match
    sender = sender_match[1]
    receiver = receiver_match[1]
    flags = flags_match[1]

    # Print the formatted result
    puts "#{sender},#{receiver},#{flags}"
  else
    # Print an error message if any required match is not found
    puts "Error: Unable to extract sender, receiver, and/or flags from the log entry."
  end
else
  # Print an error message if the number of arguments is incorrect
  puts "Usage: ./100-textme.rb '<log_entry>'"
end
