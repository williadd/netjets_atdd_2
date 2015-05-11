require 'helper'

class AboutControlStatements < Test::Unit::TestCase

  def test_if_then_else_statements
    if true
      result = :true_value
    else
      result = :false_value
    end
    assert_equal __, result
  end

  def test_if_then_statements
    result = :default_value
    if true
      result = :true_value
    end
    assert_equal __, result
  end


  def test_condition_operators
    assert_equal __, (true ? :true_value : :false_value)
    assert_equal __, (false ? :true_value : :false_value)
  end

  def test_if_statement_modifiers
    result = :default_value
    result = :true_value if true

    assert_equal __, result
  end

  def test_unless_statement
    result = :default_value
    unless false 
      result = :false_value
    end
    assert_equal __, result
  end

  def test_unless_statement_modifier
    result = :default_value
    result = :false_value unless false

    assert_equal __, result
  end

  def test_while_statement
    i = 1
    result = 1
    while i <= 10
      result = result * i
      i += 1
    end
    assert_equal __, result
  end

  def test_break_statement
    i = 1
    result = 1
    while true
      break if i >= 10
      result = result * i
      i += 1
    end
    assert_equal __, result
  end

  def test_next_statement
    i = 0
    result = []
    while i < 10
      i += 1
      next if (i % 2) == 0
      result << i
    end
    assert_equal __, result
  end

  def test_for_statement
    array = ["fish", "and", "chips"]
    result = []
    for item in array
      result << item.upcase
    end
    assert_equal [__, __, __], result
  end

  def test_times_statement
    sum = 0
    10.times do
      sum += 1
    end
    assert_equal __, sum
  end

end
