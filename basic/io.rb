#!/usr/bin/env ruby
# frozen_string_literal: true

# output methods
puts 'text 1'
print 'print'
printf 'number: %.2f, string: %s', 1, 'Hello World!'

# input method using gets
input = gets
puts input

# read the input stream using "ARGF" object
ARGF.each { |line| puts line }
