# Determine string statistics
class StringStatistic
  def initialize(array)
    @array = array
  end

  def calculate_count
    array.count
  end

  def calculate_minimum_length
    array.min_by(&:length)
  end

  def calculate_maximum_length
    array.max_by(&:length)
  end

  def calculate_average_length
    array.length / array.count
  end

  def calculate_commonalities
    array.join.count 'e'
  end
end
