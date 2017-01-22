# Determine numberic statistics
class StringStatistic
attr_reader :value, :string_count, :minimum_string_length,
            :maximum_string_length, :average_string_length, :common_letters

  def initialize(value)
    @value =  value
  end

  def calculate_count
    string_count = value.count
  end

  def calculate_minimum_length
    minimum_string_length = value.length.min
  end

  def calculate_maximum_length
    maximum_string_length = value.length.max
  end

  def calculate_average_length
    average_string_length = value.length / value.count
  end

  def calculate_commonalities
    common_letters = value.count('e')
  end
end
