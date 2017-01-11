require 'minitest/autorun'
require 'minitest/nyan_cat'
require_relative 'user_input_statistics'

# Minitest suite for User Input Statistics Normal Mode.
class TestUserInputStatistics < Minitest::Test
  def test_numeric?
    assert_equal true, numeric?('42')
    assert_equal true, numeric?('3.45')
    assert_equal true, numeric?('-9')
    assert_equal true, numeric?('-1.23')
    assert_equal false, numeric?('kitten')
  end

  def test_count
    assert_empty([])
    assert_equal(1, count(['42']))
    assert_equal(2, count(['42', '3.45']))
    assert_equal(3, count(['42', '3.45', '-9']))
    assert_equal(4, count(['42', '3.45', '-9', '-1.23']))
  end

  def test_sum

  end

  def test_average

  end
end
