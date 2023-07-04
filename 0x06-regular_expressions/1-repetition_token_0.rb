#!/usr/bin/env ruby

regex = /hb{0,1}tn/

input_string = ARGV[0]

if input_string.match(regex)
  puts input_string
else
  puts ""
end
