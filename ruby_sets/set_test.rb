gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'set'

class SetTest < Minitest::Test
  attr_accessor :set
  def setup
    @set = Set.new
  end

  def test_it_is_empty_upon_initialization
    assert_equal true, set.data.empty?
    refute_equal false, set.data.empty?
  end

  def test_it_can_add_stuff_to_set
    set.add_only_uniq_data(1)
    assert_equal 1, set.data.first
    refute_equal 2, set.data.first
  end

  def test_its_contents_are_unique
    set.add_only_uniq_data(1)
    set.add_only_uniq_data(1)
    assert_equal 1, set.data.count
    assert_equal 1, set.data.first
  end

  def test_its_contents_are_still_uniq
    set.add_only_uniq_data(1)
    set.add_only_uniq_data(1)
    set.add_only_uniq_data("foo")
    set.add_only_uniq_data("foo")
    assert_equal 2, set.data.count
  end

end
