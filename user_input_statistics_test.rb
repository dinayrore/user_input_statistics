require 'minitest/autorun'
require 'minitest/nyan_cat'
require_relative 'user_input_statistics'

# Minitest suite for User Input Statistics Normal Mode.
class TestUserInputStatistics < Minitest::Test
  def test_numeric?
    assert_equal ['42'], numeric?('42', [])
    assert_equal ['3.45'], numeric?('3.45', [])
    assert_equal ['-9'], numeric?('-9', [])
    assert_equal ['-1.23'], numeric?('-1.23', [])
  end

  def test_validate_input
    assert_output('Invalid input. ') { print 'Invalid input. ' } if numeric?('kitten', [])
  end

  def test_calculate_sum
    assert_equal(0, calculate_sum(['0']))
    assert_equal(42, calculate_sum(['42']))
    assert_equal(33, calculate_sum(['42', '-9']))
    assert_equal(35.22, calculate_sum(['42', '3.45', '-9', '-1.23']))
  end

  def test_calculate_average
    assert_equal(0, calculate_average(0, ['0']))
    assert_equal(16, calculate_average(33, ['42', '-9']))
    assert_equal(8.805, calculate_average(35.22, ['42', '3.45', '-9', '-1.23']))
  end
end
