# frozen_string_literal: true

# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a = 0, b = 0, c = 0) # rubocop:disable Naming/MethodParameterName
  valid_triangle?(a, b, c)

  if a.equal?(b) && b.equal?(c)
    :equilateral
  elsif a.equal?(b) || b.equal?(c) || a.equal?(c)
    :isosceles
  else
    :scalene
  end
end

def valid_triangle?(a = 0, b = 0, c = 0) # rubocop:disable Naming/MethodParameterName
  raise TriangleError if a <= 0 || b <= 0 || c <= 0
  raise TriangleError if a >= b + c || b >= a + c || c >= a + b
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
