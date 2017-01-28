# Determine numberic statistics
class NumericStatistic
  def initialize(array)
    @array = array
  end

  def calculate_count
    array.count
  end

  def calculate_sum
    sum = 0
    array.each { |num| sum += num.to_f }
    sum = sum.round(2)
  end

  def calculate_average
    calculate_sum(array) / array.count
  end

  def calculate_mode
    mode = {}
    array.each { |num| mode[num] += 1 }
  end

  def calculate_median
    median = array.sort
    if Integer.even?(array)
      (((median.length/2.0) + ((median.length + 1)/2.0)) / 2.0)
    else
      (median + 1) / 2.0
    end
  end

  def calculate_standard_diviation
    variance = array.sort
    Math.sqrt(variance.max - variance.min)
  end
end
