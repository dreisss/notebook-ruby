#!/usr/bin/env ruby
# frozen_string_literal: true

# Simple array assignment
algarisms = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

# Access array by index
puts algarisms[5]

# If the element was not found it will return "nil", meaning "false" as boolean
puts algarisms[10].nil?

# Create empty array
empty_array1 = []
empty_array2 = Array.new # using the object "Array"

# Create array of words more easily
fruits = %w[banana apple blueberry orange mango]
