require 'helper'

class AboutObjects < Test::Unit::TestCase

  def test_which_things_are_objects
    assert_equal __, 1.is_a?(Object)
    assert_equal __, 1.5.is_a?(Object)
    assert_equal __, "string".is_a?(Object)
    assert_equal __, nil.is_a?(Object)
    assert_equal __, Object.is_a?(Object)
  end

end
