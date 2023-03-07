# frozen_string_literal: true

require File.expand_path("#{File.dirname(__FILE__)}/neo")

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb' # rubocop:disable Style/RedundantFileExtensionInRequire

class AboutTriangleProject2 < Neo::Koan # rubocop:disable Style/Documentation
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end # rubocop:disable Style/BlockDelimiters
    assert_raise(TriangleError) do triangle(3, 4, -5) end # rubocop:disable Style/BlockDelimiters
    assert_raise(TriangleError) do triangle(1, 1, 3) end # rubocop:disable Style/BlockDelimiters
    assert_raise(TriangleError) do triangle(2, 4, 2) end # rubocop:disable Style/BlockDelimiters
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
end
