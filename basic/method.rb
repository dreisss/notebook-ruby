#!/usr/bin/env ruby

# Simple method/function creation
# Without argument
def print_hello_world
  puts "Hello World!"
end

print_hello_world

# With argument
def print_text(text)
  puts text
  return text
end

print_text "Hello World!"

# Convention: use snake_case to method names
# Note: use "()" calling methods is optional
