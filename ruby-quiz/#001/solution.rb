# frozen_string_literal: true

# Solution to challenge
class Solution
  def clean_input(input = '')
    processed_input = input.upcase.gsub(/[^A-Z]/, '')
    processed_input << 'X' until (processed_input.length % 5).zero?
    processed_input
  end

  def five_chars_groups(input = '')
    clean_input(input).scan(/.{5}/).join(' ')
  end

  def letters_to_numbers(cleaned_input = '')
    result = []
    cleaned_input.each_char { |char| result << char.ord - 64 }
    result
  end

  def five_nums_groups(cleaned_input = '')
    letters_to_numbers(cleaned_input).join(' ').gsub(/(\d+\s){5}/, '\0 ')
  end

  def sum_number_arrays(number_array1 = [], number_array2 = [])
    number_array1.map.each_with_index do |_, i|
      sum = number_array1[i] + number_array2[i]
      sum > 26 ? sum - 26 : sum
    end
  end

  def numbers_to_letters(number_array = [])
    result = ''
    number_array.each { |number| result += (number + 64).chr }
    result
  end

  def encrypt(phrase = '', key = '')
    cleaned_phrase = clean_input(phrase)
    cleaned_key = clean_input(key)

    phrase_numbers = letters_to_numbers(cleaned_phrase)
    key_numbers = letters_to_numbers(cleaned_key)

    result_numbers = sum_number_arrays(phrase_numbers, key_numbers)
    five_chars_groups(numbers_to_letters(result_numbers))
  end
end
