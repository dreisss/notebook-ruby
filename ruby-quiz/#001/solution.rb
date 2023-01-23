# frozen_string_literal: true

# Solution to challenge
class Solution
  def clean_input(input = '')
    processed_input = input.gsub(/[^a-zA-Z]/, '') # remove non-word chars

    # fill string with 'X' to fit just five character groups
    processed_input << 'X' until (processed_input.length % 5).zero?

    processed_input
      .upcase # uppercase the string
      .scan(/.{5}/) # split string to five character groups
      .join(' ') # join all character groups with space between them
  end

  def string_to_numbers(cleaned_input = '')
    result = []

    cleaned_input.gsub(/\s/, '').each_char do |char|
      result << char.ord - 64
    end

    result.join(' ')
  end
end
