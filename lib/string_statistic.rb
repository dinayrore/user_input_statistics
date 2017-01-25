# Determine string statistics
class StringStatistic
attr_reader :value, :string_count, :minimum_string_length,
            :maximum_string_length, :average_string_length, :common_letters

  def initialize(array)
    @array=  array
  end

  def calculate_count
    string_count = array.count
  end

  def calculate_minimum_length
    minimum_string_length = array.length.min
  end

  def calculate_maximum_length
    maximum_string_length = array.length.max
  end

  def calculate_average_length
    average_string_length = array.length / array.count
  end

  def calculate_commonalities
    common_letters = array.count('e')
  end
end