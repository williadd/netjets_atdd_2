require 'helper'

class AboutSymbols < Test::Unit::TestCase
  def test_symbol_type
    symbol = :ruby
    assert_equal __, symbol.is_a?(Symbol)
    assert_equal __, symbol.is_a?(String)
  end

  def test_symbols_comparison
    symbol1 = :a_symbol
    symbol2 = :a_symbol
    symbol3 = :something_else

    assert_equal __, symbol1 == symbol2
    assert_equal __, symbol1 == symbol3
  end

end
