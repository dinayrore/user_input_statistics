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
  numeric_stats = NumericStatistic.new(numeric)
  puts "Count: #{numeric_stats.calculate_count}"
  puts "Sum: #{numeric_stats.calculate_sum}"
  puts "Average/Mean: #{numeric_stats.calculate_average}"
  puts "Median: #{numeric_stats.calculate_median}"
  puts "Mode: #{numeric_stats.calculate_mode}"
  puts "Standard Deviation: #{numeric_stats.calculate_standard_diviation}"
end

def print_string_statistics(string)
  string_stats = StringStatistic.new(string)
  puts "Count: #{string_stats.calculate_count}"
  puts "Minimum String Length: #{string_stats.calculate_minimum_length}"
  puts "Maximum String Length: #{string_stats.calculate_maximum_length}"
  puts "Average String Length: #{string_stats.calculate_average_length}"
  puts "How many letter 'e's': #{string_stats.calculate_commonalities}"
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
