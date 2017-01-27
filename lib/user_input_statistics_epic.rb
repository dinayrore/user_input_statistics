require 'pry'
require_relative 'input'
require_relative 'numeric_statistic'
require_relative 'string_statistic'

def enter_value
  puts 'Please enter a number OR word. Press return to exit the program.'
  value = gets.chomp
  value = Input.new(value)
end

def verify_values(numbers, words)
  if numbers
    print_numeric_statistics(numbers)
  else
    print_string_statistics(words)
  end
end

def print_string_statistics
  puts "Count: #{string_count}"
  puts "Minimum String Length: #{minimum_string_length}"
  puts "Maximum String Length: #{maximum_string_length}"
  puts "Average String Length: #{average_string_length}"
  puts "How many letter 'e's': #{common_letters}"
end

def print_numeric_statistics
  puts "Count: #{numeric_count}"
  puts "Sum: #{sum}"
  puts "Average/Mean: #{average}"
  puts "Median: #{median}"
  puts "Mode: #{mode}"
  puts "Standard Deviation: #{standard_diviation}"
end

def main
  numeric = []
  string = []
  loop do
    value = enter_value
    break if value == ''
    string << value if value.string?
    numeric << value.to_f if value.float?
    numeric << value.to_i if value.float?
  end
  verify_values(numbers, words)
end

main if __FILE__ == $PROGRAM_NAME
