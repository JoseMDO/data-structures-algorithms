require 'minitest/autorun'
require_relative "../1985-kth-largest-number.rb"


class TestTwoSum < Minitest::Test
  def test_find_kth_largest
    result = find_kth_largest_heap([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)
    expected = 4
    assert_equal expected, result
  end


  def test_find_kth_largest_large
    array = Array.new
    1000000.times do |num|
      array.push(num)
    end
    result = find_kth_largest_heap(array, 3)
    expected = 999997
    assert_equal expected, result
  end
end
