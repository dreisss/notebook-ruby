# frozen_string_literal: true

require File.expand_path("#{File.dirname(__FILE__)}/neo")

class AboutControlStatements < Neo::Koan # rubocop:disable Metrics/ClassLength, Style/Documentation
  def test_if_then_else_statements
    if true # rubocop:disable Style/ConditionalAssignment, Lint/LiteralAsCondition
      result = :true_value
    else
      result = :false_value
    end
    assert_equal :true_value, result
  end

  def test_if_then_statements
    result = :default_value
    if true # rubocop:disable Style/IfUnlessModifier, Lint/LiteralAsCondition
      result = :true_value
    end
    assert_equal :true_value, result
  end

  def test_if_statements_return_values # rubocop:disable Metrics/MethodLength
    value = if true # rubocop:disable Lint/LiteralAsCondition
              :true_value
            else
              :false_value
            end
    assert_equal :true_value, value

    value = if false # rubocop:disable Lint/LiteralAsCondition
              :true_value
            else
              :false_value
            end
    assert_equal :false_value, value

    # NOTE: Actually, EVERY statement in Ruby will return a value, not
    # just if statements.
  end

  def test_if_statements_with_no_else_with_false_condition_return_value
    value = if false # rubocop:disable Lint/LiteralAsCondition, Style/IfUnlessModifier
              :true_value
            end
    assert_equal nil, value
  end

  def test_condition_operators
    assert_equal :true_value, (true ? :true_value : :false_value) # rubocop:disable Lint/LiteralAsCondition
    assert_equal :false_value, (false ? :true_value : :false_value) # rubocop:disable Lint/LiteralAsCondition
  end

  def test_if_statement_modifiers
    result = :default_value
    result = :true_value if true # rubocop:disable Lint/LiteralAsCondition

    assert_equal :true_value, result
  end

  def test_unless_statement
    result = :default_value
    # same as saying 'if !false', which evaluates as 'if true'
    unless false # rubocop:disable Lint/LiteralAsCondition, Style/IfUnlessModifier
      result = :false_value
    end
    assert_equal :false_value, result
  end

  def test_unless_statement_evaluate_true
    result = :default_value
    # same as saying 'if !true', which evaluates as 'if false'
    unless true # rubocop:disable Style/IfUnlessModifier, Lint/LiteralAsCondition
      result = :true_value
    end
    assert_equal :default_value, result
  end

  def test_unless_statement_modifier
    result = :default_value
    result = :false_value unless false # rubocop:disable Lint/LiteralAsCondition

    assert_equal :false_value, result
  end

  def test_while_statement
    i = 1
    result = 1
    while i <= 10
      result = result * i # rubocop:disable Style/SelfAssignment
      i += 1
    end
    assert_equal 3_628_800, result
  end

  def test_break_statement
    i = 1
    result = 1
    while true # rubocop:disable Style/InfiniteLoop
      break unless i <= 10

      result *= i
      i += 1
    end
    assert_equal 3_628_800, result
  end

  def test_break_statement_returns_values
    i = 1
    result = while i <= 10
      break i if i % 2 == 0 # rubocop:disable Layout/IndentationWidth, Style/EvenOdd, Style/NumericPredicate

      i += 1
    end # rubocop:disable Layout/EndAlignment

    assert_equal 2, result
  end

  def test_next_statement
    i = 0
    result = []
    while i < 10
      i += 1
      next if i.even?

      result << i
    end
    assert_equal [1, 3, 5, 7, 9], result
  end

  def test_for_statement
    array = %w[fish and chips]
    result = []
    for item in array # rubocop:disable Style/For
      result << item.upcase
    end
    assert_equal %w[FISH AND CHIPS], result
  end

  def test_times_statement
    sum = 0
    10.times do
      sum += 1
    end
    assert_equal 10, sum
  end
end
