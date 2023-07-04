#!/usr/bin/env ruby

regex = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

log_entry = ARGV[0]

match_data = log_entry.match(regex)

sender = match_data[1]
receiver = match_data[2]
flags = match_data[3]

output = "#{sender},#{receiver},#{flags}"

puts output
