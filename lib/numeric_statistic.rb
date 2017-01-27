# Determine numberic statistics
class NumericStatistic
  def self.calculate_count(array)
    numeric_count = array.count
  end

  def self.calculate_sum(array)
    sum = 0
    array.each { |num| sum += num.to_f }
    sum = sum.round(2)
  end

  def self.calculate_average(array)
    average = calculate_sum(array) / array.count
  end

  def self.calculate_mode(array)
    mode = {}
    array.each { |num| mode[num] += 1 }
  end

  def self.calculate_median(array)
    median = array.sort
    if Integer.even?(array)
      (((median.length/2.0) + ((median.length + 1)/2.0)) / 2.0)
    else
      (median + 1) / 2.0
    end
  end

  def self.calculate_standard_diviation(array)
    variance = array.sort
    standard_diviation = Math.sqrt(variance.max - variance.min)
  end
end
