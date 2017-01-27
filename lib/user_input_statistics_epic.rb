require 'pry'
require_relative 'input'
require_relative 'numeric_statistic'
require_relative 'string_statistic'

def enter_value
  puts 'Please enter a number OR word. Press return to exit the program.'
  value = gets.chomp
end

def verify_objects(numeric, string)
  print_numeric_statistics(numeric) if numeric
  print_string_statistics(string) if string
end

def print_string_statistics(string)
  string_stats = StringStatistic.new(string)
  puts "Count: #{string_stats.string_count}"
  puts "Minimum String Length: #{string_stats.minimum_string_length}"
  puts "Maximum String Length: #{string_stats.maximum_string_length}"
  puts "Average String Length: #{string_stats.average_string_length}"
  puts "How many letter 'e's': #{string_stats.common_letters}"
end

def print_numeric_statistics(numeric)
  numeric_stats = NumericStatistic.new(numeric)
  puts "Count: #{numeric_stats.numeric_count}"
  puts "Sum: #{numeric_stats.sum}"
  puts "Average/Mean: #{numeric_stats.average}"
  puts "Median: #{numeric_stats.median}"
  puts "Mode: #{numeric_stats.mode}"
  puts "Standard Deviation: #{numeric_stats.standard_diviation}"
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
