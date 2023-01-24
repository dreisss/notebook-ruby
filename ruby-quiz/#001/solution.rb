# frozen_string_literal: true

# Solution to challenge
class Solution
  def clean_phrase(phrase = '')
    processed_phrase = phrase.upcase.gsub(/[^A-Z]/, '')
    processed_phrase << 'X' until (processed_phrase.length % 5).zero?
    processed_phrase
  end

  def clean_key(key = '')
    key.delete ' '
  end

  def letters_to_numbers(cleaned_phrase = '')
    result = []
    cleaned_phrase.each_char { |char| result << char.ord - 64 }
    result
  end

  def numbers_to_letters(number_array = '')
    result = ''
    number_array.each { |number| result += (number + 64).chr }
    result
  end

  def sum_number_arrays(number_array1 = [], number_array2 = [])
    number_array1.map.each_with_index do |_, i|
      (number_array1[i] + number_array2[i]).modulo(26)
    end
  end

  def subtract_number_arrays(number_array1 = [], number_array2 = [])
    number_array1.map.each_with_index do |_, i|
      (number_array1[i] - number_array2[i]).modulo(26)
    end
  end

  def five_chars_groups(cleaned_phrase = '')
    cleaned_phrase.scan(/.{5}/).join(' ')
  end

  def five_nums_groups(number_array = [])
    number_array.join(' ').gsub(/(\d+\s){5}/, '\0 ')
  end

  def encrypt(phrase = '', key = '')
    cleaned_phrase = clean_phrase(phrase)
    cleaned_key = clean_key(key)

    phrase_numbers = letters_to_numbers(cleaned_phrase)
    key_numbers = letters_to_numbers(cleaned_key)

    result_numbers = sum_number_arrays(phrase_numbers, key_numbers)
    five_chars_groups(numbers_to_letters(result_numbers))
  end
end
