# Determine string statistics
class StringStatistic
  def initialize(array)
    @array = array
  end

  def calculate_count
    array.count
  end

  def calculate_minimum_length
    array.length.min if array.length > 1
  end

  def calculate_maximum_length
    array.length.max if array.length > 1
  end

  def calculate_average_length
    array.length / array.count
  end

  def calculate_commonalities
    array.count('e')
  end
end
