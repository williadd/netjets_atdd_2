require 'helper'

def my_global_method(a,b)
  a + b
end

class AboutMethods < Test::Unit::TestCase

  def test_calling_global_methods
    assert_equal __, my_global_method(2,3)
  end

  def test_calling_global_methods_without_parentheses
    result = my_global_method 2, 3
    assert_equal __, result
  end

  # ------------------------------------------------------------------

  def method_with_defaults(a, b=:default_value)
    [a, b]
  end

  def test_calling_with_default_values
    assert_equal [1, __], method_with_defaults(1)
    assert_equal [1, __], method_with_defaults(1, 2)
  end

  # ------------------------------------------------------------------


  # ------------------------------------------------------------------

  def method_with_explicit_return
    :a_non_return_value
    return :return_value
    :another_non_return_value
  end

  def test_method_with_explicit_return
    assert_equal __, method_with_explicit_return
  end


end
