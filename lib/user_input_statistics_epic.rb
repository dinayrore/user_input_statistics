require 'pry'
require_relative 'input'
require_relative 'numeric_statistic'
require_relative 'string_statistic'

def enter_value
  puts 'Please enter a number OR word. Press return to exit the program.'
  value = gets.chomp
end

def verify_objects(numeric, string)
  print_numeric_statistics(numeric) if !numeric.empty?
  print_string_statistics(string) if !string.empty?
end

def print_numeric_statistics(numeric)
  binding.pry
  puts "Count: #{NumericStatistic.calculate_count(numeric)}"
  puts "Sum: #{NumericStatistic.calculate_sum(numeric)}"
  puts "Average/Mean: #{NumericStatistic.calculate_average(numeric)}"
  puts "Median: #{NumericStatistic.calculate_median(numeric)}"
  puts "Mode: #{NumericStatistic.calculate_mode(numeric)}"
  puts "Standard Deviation: #{NumericStatistic.calculate_standard_diviation(numeric)}"
end

def print_string_statistics(string)
  binding.pry
  puts "Count: #{StringStatistic.calculate_count(string)}"
  puts "Minimum String Length: #{StringStatistic.calculate_minimum_length(string)}"
  puts "Maximum String Length: #{StringStatistic.calculate_maximum_length(string)}"
  puts "Average String Length: #{StringStatistic.calculate_average_length(string)}"
  puts "How many letter 'e's': #{StringStatistic.calculate_commonalities(string)}"
end

def main
  numeric = []
  string = []
  loop do
    value = enter_value
    break if value == ''
    string << value if Input.string?(value)
    numeric << value.to_f if Input.float?(value)
    numeric << value.to_i if Input.integer?(value)
  end
  verify_objects(numeric, string)
end

main if __FILE__ == $PROGRAM_NAME
