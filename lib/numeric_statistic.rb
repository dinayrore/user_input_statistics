# Calculate numberic statistics
class NumericStatistic
  def initialize(array)
    @array = array
  end

  def calculate_count
    @array.count
  end

  def calculate_sum
    sum = 0
    @array.each { |num| sum += num.to_f }
    sum = sum.round(1)
  end

  def calculate_average
    (calculate_sum / @array.count).round(1)
  end

  def calculate_mode
    mode = @array.inject(Hash.new(0)) { |k, v| k[v] += 1; k }
    @array.max_by { |value| mode[value] }
  end

  def calculate_median
    sorted = @array.sort
    length = sorted.length
    ((sorted[(length - 1) / 2] + sorted[length / 2]) / 2.0).round(1)
  end

  def calculate_standard_diviation
    mean = calculate_average
    variance = @array.inject(0) { |v, n| v += (n - mean)**2 }
    Math.sqrt(variance / (@array.size - 1)).round(1)
  end
end
