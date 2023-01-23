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

  def test_string_to_numbers
    solution = Solution.new

    expected_phrase1 = '3 15 4 5 9 14 18 21 2 25 12 9 22 5 12 15 14 7 5 18'
    expected_phrase2 = '25 15 21 18 3 9 16 8 5 18 9 19 23 15 18 11 9 14 7 24'
    expected_phrase3 = '23 5 12 3 15 13 5 20 15 18 21 2 25 17 21 9 26 24 24 24'

    assert_equal(solution.string_to_numbers('CODEI NRUBY LIVEL ONGER'), expected_phrase1)
    assert_equal(solution.string_to_numbers('YOURC IPHER ISWOR KINGX'), expected_phrase2)
    assert_equal(solution.string_to_numbers('WELCO METOR UBYQU IZXXX'), expected_phrase3)
  end
end
