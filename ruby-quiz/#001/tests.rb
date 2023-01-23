#!/usr/bin/env ruby

# frozen_string_literal: true

require './solution'
require 'test/unit'

# Test challenge solution
class SolutionTest < Test::Unit::TestCase
  def test_clean_input
    solution = Solution.new

    assert_equal solution.clean_input('Code in Ruby, live longer!'), 'CODEI NRUBY LIVEL ONGER'
    assert_equal solution.clean_input('Your Cipher is Working!'), 'YOURC IPHER ISWOR KINGX'
    assert_equal solution.clean_input('Welcome to Ruby Quiz!'), 'WELCO METOR UBYQU IZXXX'
  end
end
