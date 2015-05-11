require 'helper'

class AboutClasses < Test::Unit::TestCase
  class Dog
  end

  def test_creating_new_objects_with_contructors
    fido = Dog.new
    assert_equal __, fido.class
  end

  # ------------------------------------------------------------------

  class Dog3
    def set_name(a_name)
      @name = a_name
    end
    def name
      @name
    end
  end

  def test_using_accessor_methods_to_return_instance_variables
    fido = Dog3.new
    fido.set_name("Fido")

    assert_equal __, fido.name
  end

  # ------------------------------------------------------------------

  class Dog5
    attr_accessor :name
  end

  def test_automatically_define_both_read_and_write_accessors
    fido = Dog5.new

    fido.name = "Fido"
    assert_equal __, fido.name
  end

  # ------------------------------------------------------------------

  class Dog6
    attr_reader :name
    def initialize(initial_name)
      @name = initial_name
    end
  end

  def test_providing_initial_values_for_instance_variables
    fido = Dog6.new("Fido")
    assert_equal __, fido.name
  end

  def test_different_objects_have_different_instance_variables
    fido = Dog6.new("Fido")
    rover = Dog6.new("Rover")

    assert_equal __, rover.name != fido.name
  end


end
