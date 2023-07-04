#!/usr/bin/env ruby

regex = /^h.n$/

input_string = ARGV[0]

if input_string.match(regex)
  puts input_string
else
  puts ""
end
