# This code was constructed during the first days of my TIY experience
class String
  def is_string?
    self == self
    return true
  end

  def is_float?
    self.to_f.to_s == self
    return true
  end

  def is_integer?
    self.to_i.to_s == self
    return true
  end

  def is_numeric?
    is_float? || is_integer?
    return true
  end
end

input_arr = []

puts "Enter a number or a string: "
input = gets.chomp

if (input.to_i.to_s == input) || (input.to_f.to_s == input) # checks if number
  input_arr << input.to_f
else
  input_arr << input
end

loop do
  puts "Enter a number or a string: "
  input = gets.chomp

  if input == ""
    break
  end

  if !input.is_numeric? && !input.is_float? && !input.is_integer?
    if input.is_numeric? #checks for numeric
      input_arr << input.to_f
    else
      puts "Please Try Again! Type ruby user_input_stat_advanced.rb to rerun the program."
      break
    end
  else
    if !input.is_numeric? #|| !input.is_float? || !input.is_integer? #checks for string
      input_arr << input
    else
      puts "Please Try Again! Type ruby user_input_stat_advanced.rb to rerun the program."
      break
    end
  end
end

if input_arr.include?(!input.is_numeric?)
  puts input_arr.join
else
  puts "Count: #{input_arr.count}"
  sum = 0
  input_arr.each do |number|
    sum += number
  end #sum
  puts "Sum: #{sum}"
  average = sum / input_arr.count #average
  puts "Average: #{average}"
end

#p user_input_stat (to print array for check)
