def user_input(input)
  puts 'Enter a number: '
  value = gets.chomp
  numeric?(value, input)
end

def numeric?(value, input)
  if value.to_i.to_s == value || value.to_f.to_s == value
    input << value
    user_input(input)
  elsif value == "\n"
    print_statistics(input)
  else
    print 'Invalid input. '
    user_input(input)
  end
  input
end

def calculate_sum(input)
  sum = 0
  input.each { |v| sum += v.to_f }
end

def calculate_average(sum, input)
  average = sum / input.count
end

def print_statistics(input)
  puts "Count: #{input.count}"
  sum = calculate_sum(input)
  puts "Sum: #{sum}"
  average = calculate_average(sum, input)
  puts "Average: #{average}"
end

def main
  input = []
  user_input(input)
end

main if __FILE__ == $PROGRAM_NAME
