#!/usr/bin/env ruby

# frozen_string_literal: true

require './solution'
require 'test/unit'

# Test challenge solution
class SolutionTest < Test::Unit::TestCase
  SOLUTION = Solution.new

  def test_clean_input
    assert_equal SOLUTION.clean_input('Code in Ruby, live longer!'), 'CODEINRUBYLIVELONGER'
    assert_equal SOLUTION.clean_input('Your Cipher is Working!'), 'YOURCIPHERISWORKINGX'
    assert_equal SOLUTION.clean_input('Welcome to Ruby Quiz!'), 'WELCOMETORUBYQUIZXXX'
  end

  def test_five_chars_groups
    assert_equal SOLUTION.five_chars_groups('Code in Ruby, live longer!'), 'CODEI NRUBY LIVEL ONGER'
    assert_equal SOLUTION.five_chars_groups('Your Cipher is Working!'), 'YOURC IPHER ISWOR KINGX'
    assert_equal SOLUTION.five_chars_groups('Welcome to Ruby Quiz!'), 'WELCO METOR UBYQU IZXXX'
  end

  def test_letters_to_numbers
    expected1 = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
    expected2 = [25, 15, 21, 18, 3, 9, 16, 8, 5, 18, 9, 19, 23, 15, 18, 11, 9, 14, 7, 24]
    expected3 = [23, 5, 12, 3, 15, 13, 5, 20, 15, 18, 21, 2, 25, 17, 21, 9, 26, 24, 24, 24]

    assert_equal SOLUTION.letters_to_numbers('CODEINRUBYLIVELONGER'), expected1
    assert_equal SOLUTION.letters_to_numbers('YOURCIPHERISWORKINGX'), expected2
    assert_equal SOLUTION.letters_to_numbers('WELCOMETORUBYQUIZXXX'), expected3
  end

  def test_five_nums_groups
    expected1 = '3 15 4 5 9  14 18 21 2 25  12 9 22 5 12  15 14 7 5 18'
    expected2 = '25 15 21 18 3  9 16 8 5 18  9 19 23 15 18  11 9 14 7 24'
    expected3 = '23 5 12 3 15  13 5 20 15 18  21 2 25 17 21  9 26 24 24 24'

    assert_equal SOLUTION.five_nums_groups('CODEINRUBYLIVELONGER'), expected1
    assert_equal SOLUTION.five_nums_groups('YOURCIPHERISWORKINGX'), expected2
    assert_equal SOLUTION.five_nums_groups('WELCOMETORUBYQUIZXXX'), expected3
  end
end
