#!/usr/bin/env ruby

# frozen_string_literal: true

require './solution'
require 'test/unit'

# Test challenge solution
class SolutionTest < Test::Unit::TestCase
  SOLUTION = Solution.new

  def test_clean_phrase
    assert_equal 'CODEINRUBYLIVELONGER', SOLUTION.clean_phrase('Code in Ruby, live longer!')
    assert_equal 'YOURCIPHERISWORKINGX', SOLUTION.clean_phrase('Your Cipher is Working!')
    assert_equal 'WELCOMETORUBYQUIZXXX', SOLUTION.clean_phrase('Welcome to Ruby Quiz!')
  end

  def test_clean_key
    assert_equal 'DWJXHYRFDGTMSHPUURXJ', SOLUTION.clean_key('DWJXH YRFDG TMSHP UURXJ')
  end

  def test_letters_to_numbers
    expected1 = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
    expected2 = [25, 15, 21, 18, 3, 9, 16, 8, 5, 18, 9, 19, 23, 15, 18, 11, 9, 14, 7, 24]
    expected3 = [23, 5, 12, 3, 15, 13, 5, 20, 15, 18, 21, 2, 25, 17, 21, 9, 26, 24, 24, 24]

    assert_equal expected1, SOLUTION.letters_to_numbers('CODEINRUBYLIVELONGER')
    assert_equal expected2, SOLUTION.letters_to_numbers('YOURCIPHERISWORKINGX')
    assert_equal expected3, SOLUTION.letters_to_numbers('WELCOMETORUBYQUIZXXX')
  end

  def test_numbers_to_letters
    number_array = [7, 12, 14, 3, 17, 13, 10, 1, 6, 6, 6, 22, 15, 13, 2, 10, 9, 25, 3, 2]
    expected = 'GLNCQMJAFFFVOMBJIYCB'

    assert_equal expected, SOLUTION.numbers_to_letters(number_array)
  end

  def test_sum_number_arrays
    number_array1 = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
    number_array2 = [4, 23, 10, 24, 8, 25, 18, 6, 4, 7, 20, 13, 19, 8, 16, 21, 21, 18, 24, 10]
    expected = [7, 12, 14, 3, 17, 13, 10, 1, 6, 6, 6, 22, 15, 13, 2, 10, 9, 25, 3, 2]

    assert_equal expected, SOLUTION.sum_number_arrays(number_array1, number_array2)
  end

  def test_subtract_number_arrays
    number_array1 = [7, 12, 14, 3, 17, 13, 10, 1, 6, 6, 6, 22, 15, 13, 2, 10, 9, 25, 3, 2]
    number_array2 = [4, 23, 10, 24, 8, 25, 18, 6, 4, 7, 20, 13, 19, 8, 16, 21, 21, 18, 24, 10]
    expected = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]

    assert_equal expected, SOLUTION.subtract_number_arrays(number_array1, number_array2)
  end

  def test_five_chars_groups
    assert_equal 'CODEI NRUBY LIVEL ONGER', SOLUTION.five_chars_groups('CODEINRUBYLIVELONGER')
    assert_equal 'YOURC IPHER ISWOR KINGX', SOLUTION.five_chars_groups('YOURCIPHERISWORKINGX')
    assert_equal 'WELCO METOR UBYQU IZXXX', SOLUTION.five_chars_groups('WELCOMETORUBYQUIZXXX')
  end

  def test_five_nums_groups
    number_array1 = [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18]
    number_array2 = [25, 15, 21, 18, 3, 9, 16, 8, 5, 18, 9, 19, 23, 15, 18, 11, 9, 14, 7, 24]
    number_array3 = [23, 5, 12, 3, 15, 13, 5, 20, 15, 18, 21, 2, 25, 17, 21, 9, 26, 24, 24, 24]

    expected1 = '3 15 4 5 9  14 18 21 2 25  12 9 22 5 12  15 14 7 5 18'
    expected2 = '25 15 21 18 3  9 16 8 5 18  9 19 23 15 18  11 9 14 7 24'
    expected3 = '23 5 12 3 15  13 5 20 15 18  21 2 25 17 21  9 26 24 24 24'

    assert_equal expected1, SOLUTION.five_nums_groups(number_array1)
    assert_equal expected2, SOLUTION.five_nums_groups(number_array2)
    assert_equal expected3, SOLUTION.five_nums_groups(number_array3)
  end

  def test_encrypt
    key = 'DWJXH YRFDG TMSHP UURXJ'

    phrase1 = 'Code in Ruby, live longer!'
    phrase2 = 'Your Cipher is Working!'
    phrase3 = 'Welcome to Ruby Quiz!'

    expected1 = 'GLNCQ MJAFF FVOMB JIYCB'
    expected2 = 'CLEPK HHNIY CFPWH FDFEH'
    expected3 = 'ABVAW LWZSY OORYK DUPVH'

    assert_equal expected1, SOLUTION.encrypt(phrase1, key)
    assert_equal expected2, SOLUTION.encrypt(phrase2, key)
    assert_equal expected3, SOLUTION.encrypt(phrase3, key)
  end

  def test_decrypt
    key = 'DWJXH YRFDG TMSHP UURXJ'

    crypted_phrase1 = 'GLNCQ MJAFF FVOMB JIYCB'
    crypted_phrase2 = 'CLEPK HHNIY CFPWH FDFEH'
    crypted_phrase3 = 'ABVAW LWZSY OORYK DUPVH'

    expected1 = 'CODEI NRUBY LIVEL ONGER'
    expected2 = 'YOURC IPHER ISWOR KINGX'
    expected3 = 'WELCO METOR UBYQU IZXXX'

    assert_equal expected1, SOLUTION.decrypt(crypted_phrase1, key)
    assert_equal expected2, SOLUTION.decrypt(crypted_phrase2, key)
    assert_equal expected3, SOLUTION.decrypt(crypted_phrase3, key)
  end
end
