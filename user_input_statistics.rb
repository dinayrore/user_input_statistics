def user_input
  puts 'Enter a number: '
  value = gets.chomp
end

def numeric?(value, input)
  if value.class == Fixnum || value.class == Float
    input << value
  else
    print 'Invalid input. '
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
  until gets.chomp.empty?
    value = user_input
    input = numeric?(value, input)
  end
  print_statistics(input)
end

main if __FILE__ == $PROGRAM_NAME
