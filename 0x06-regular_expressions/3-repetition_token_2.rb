#!/usr/bin/env ruby

regex = /hbt*n/

input_string = ARGV[0]

if input_string.match(regex)
  puts input_string
else
  puts ""
end
