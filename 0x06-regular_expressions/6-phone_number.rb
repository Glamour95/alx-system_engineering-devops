#!/usr/bin/env ruby

regex = /^\d{10}$/

input_string = ARGV[0]

if input_string.match(regex)
  puts input_string
else
  puts ""
end
