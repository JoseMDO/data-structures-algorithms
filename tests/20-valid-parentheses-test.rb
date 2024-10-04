require 'minitest/autorun'
require_relative "../20-valid-parentheses.rb"

class TestValidParentheses < Minitest::Test
  def test_valid_parentheses_1
    assert_equal true, valid_parentheses("()")
  end

  def test_valid_parentheses_2
    assert_equal false, valid_parentheses("([)]")
  end

  def test_valid_parentheses_3
    assert_equal true, valid_parentheses("()[]{}")
  end

  def test_valid_parentheses_4
    assert_equal true, valid_parentheses("({[({[({[(){}]})]})]})" * 100)
  end
end
