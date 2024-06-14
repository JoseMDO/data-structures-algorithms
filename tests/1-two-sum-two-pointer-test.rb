require 'minitest/autorun'
require_relative "../1-two-sum.rb"


class TestTwoSum < Minitest::Test
  def test_two_sum_two_pointer_1
    result = two_sum_brute([1, 2, 3, 4, 5], 5)
    expected = [[2, 3], [1, 4]]
    assert_equal expected.sort, result.sort
  end

  def test_two_sum_two_pointer_2
    result = two_sum_two_pointer([0, -1, 2, -3, 1], -2)
    expected = [[-3, 1]]
    assert_equal expected.sort, result.sort
  end

  def test_two_sum_two_pointer_3
    result = two_sum_two_pointer([11, -4, 7, 8, -10], 4)
    expected = [[-4, 8]]
    assert_equal expected.sort, result.sort
  end

  def test_two_sum_two_pointer_4
    array = Array.new
    20000.times do |i|
      array.push(rand(0..10000))
    end
    result = rand(1..10000)
    result = two_sum_two_pointer(array, result)
    assert_equal result.sort, result.sort
  end
end
