# Determine string statistics
class StringStatistic
  def self.calculate_count(array)
    string_count = array.count
  end

  def self.calculate_minimum_length(array)
    minimum_string_length = array.length.min
  end

  def self.calculate_maximum_length(array)
    maximum_string_length = array.length.max
  end

  def self.calculate_average_length(array)
    average_string_length = array.length / array.count
  end

  def self.calculate_commonalities(array)
    common_letters = array.count('e')
  end
end
