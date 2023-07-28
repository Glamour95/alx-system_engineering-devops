#!/usr/bin/env ruby

regex = /[A-Z]/

input_string = ARGV[0]

matches = input_string.scan(regex).join

puts matches
