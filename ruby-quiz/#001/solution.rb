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
end
