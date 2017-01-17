def enter_value
  puts 'Enter a number: '
  value = gets.chomp
end

def numeric?(value, input)
  input << value if value.to_i.to_s == value || value.to_f.to_s == value
end

def validate_input(value, input)
  print 'Invalid input. ' if numeric?(value, input) == false
end

def calculate_sum(input)
  sum = 0
  input.each { |v| sum += v.to_f }
  sum = sum.round(2)
end

def calculate_average(sum, input)
  average = calculate_sum(input) / input.count
end

def print_statistics(input, sum, average)
  puts "Count: #{input.count}"
  puts "Sum: #{sum}"
  puts "Average: #{average.round(2)}"
end

def main
  input = []
  loop do
    value = enter_value
    break if value == ''
    numeric?(value, input)
    validate_input(value, input)
  end
  sum = calculate_average(input)
  average = print_statistics(input, sum, average)
end

main if __FILE__ == $PROGRAM_NAME
