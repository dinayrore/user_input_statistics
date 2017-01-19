# Determine numberic statistics
class NumericStatistic  
  def calculate_sum(array)
    sum = 0
    array.each { |num| sum += num.to_f }
    sum = sum.round(2)
  end

  def calculate_average(array)
    average = calculate_sum(array) / array.count
  end

  def calculate_mode(array)
    mode = {}
    array.each { |num| mode[num] += 1 }
  end

  def calculate_median(array)
    middle = array.sort
    if Integer.even?(array)
      (((middle.length/2.0) + ((middle.length + 1)/2.0)) / 2.0)
    else
      (middle + 1) / 2.0
    end
    middle
  end

  def calculate_standard_diviation(numbers)
    variance = numbers.sort
    standard_diviation = Math.sqrt(variance.max - variance.min)
  end
  standard_diviation
end
