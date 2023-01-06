#!/usr/bin/env ruby
# frozen_string_literal: true

# Require the set library
require 'set'

# Set variable assignment
A = Set['a', 'A']
B = Set['b', 'B']

# Set operations
puts A | B # union, same as A.union B, A.merge B, A + B
puts A & B # intersection, same as A.intersection B
puts A - B # difference, same as A.difference B

# Set comparations
puts A < B # proper subset, same as A.proper_subset? B
puts A <= B # subset, same as A.subset? B
puts A > B # superset, same as A.superset? B

# Adding elements
puts A << 'aa' # same as A.add 'aa'

# querying methods
puts A.length
puts A.empty?
puts A.include? 'a' # same as A.member? and ===
puts A.intersect? B
puts A.disjoint? B
