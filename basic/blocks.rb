#!/usr/bin/env ruby
# frozen_string_literal: true

# Blocks are just they say, a code block
# do
#   puts "Hello"
# end

# You can use curly brackets too
# { puts "Hello" }

# blocks do not work alone but associated with other structures
# Associated with a method
def call_block
  yield
end

call_block { puts 'Hello' }

# Using "each" iterator over an array
%w[banana apple orange].each { |fruit| puts fruit }

# alternatively
%w[banana apple orange blueberry].each do |fruit|
  puts fruit
end

# using "times" iterator over a number
4.times do
  puts 'Times Example'
end

# using "upto" iterator over a number
1.upto 5 do |i|
  puts i
end
