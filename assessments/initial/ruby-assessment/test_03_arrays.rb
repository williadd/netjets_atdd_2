require 'helper'

class AboutArrays < Test::Unit::TestCase
  def test_creating_arrays
    empty_array = Array.new
    assert_equal __, empty_array.class
    assert_equal __, empty_array.size
  end

  def test_accessing_array_elements
    array = ['peanut', 'butter', 'and', 'jelly']

    assert_equal __, array[0]
    assert_equal __, array.first
    assert_equal __, array[3]
    assert_equal __, array.last
    assert_equal __, array[1]
  end

end
