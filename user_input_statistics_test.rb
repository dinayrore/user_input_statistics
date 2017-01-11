require 'minitest/autorun'
require 'minitest/nyan_cat'
require_relative 'user_input_statistics'

# Minitest suite for User Input Statistics Normal Mode.
class TestUserInputStatistics < Minitest::Test
  def test_is_numeric?
    assert_equal true, is_numeric?('42')
    assert_equal true, is_numeric?('3.45')
    assert_equal true, is_numeric?('-9')
    assert_equal true, is_numeric?('-1.23')
    assert_equal false, is_numeric?('kitten')
  end

  def test_push_to_array
    assert
  end

  def test_count

  end

  def test_sum

  end

  def test_average

  end
end
