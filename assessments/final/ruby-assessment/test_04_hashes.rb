require 'helper'

class AboutHashes < Test::Unit::TestCase
  def test_creating_hashes
    empty_hash = Hash.new
    assert_equal __, empty_hash.class
    assert_equal __, empty_hash.size
  end

  def test_hash_literals
    hash = { :one => "uno", :two => "dos" }
    assert_equal __, hash.size
  end

  def test_accessing_hashes
    hash = { :one => "uno", :two => "dos" }
    assert_equal __, hash[:one]
    assert_equal __, hash[:two]
    assert_equal __, hash[:doesnt_exist]
  end

  def test_changing_hashes
    hash = { :one => "uno", :two => "dos" }
    hash[:one] = "eins"

    expected = { :one => __, :two => "dos" }
    assert_equal expected, hash
  end

  def test_hash_order
    hash1 = { :one => "uno", :two => "dos" }
    hash2 = { :two => "dos", :one => "uno" }

    assert_equal __, hash1 == hash2
  end

end
