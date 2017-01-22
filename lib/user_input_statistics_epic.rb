require 'pry'

def enter_value
  puts 'Enter a number OR word: '
  value = gets.chomp
end

def print_string_statistics
  puts "Count: #{string_count}"
  puts "Minimum String Length: #{minimum_string_length}"
  puts "Maximum String Length: #{maximum_string_length}"
  puts "Average String Length: #{average_string_length}"
  puts "How many letter 'e's': #{common_letters}"
end

def print_numeric_statistics
  puts "Count: #{elements.count}"
  puts "Sum: #{get_sum(elements)}"
  puts "Average/Mean: #{get_average(elements)}"
  puts "Median: #{get_median(elements)}"
  puts "Mode: #{get_mode(elements)}"
  puts "Standard Deviation: #{get_standard_diviation(elements)}"
end

#
# def try_again()
#   puts "Invalid input. Would you like to try again?"
#   print "Type \'retry\' to try again or \'exit\' to return to the Terminal: "
#   input = gets.chomp.downcase
#   if input == "retry"
#     main
#   else
#     exit
#   end
# end
#

def main
  array = []
  loop do
    value = enter_value
    break if value == ''
    Input.numeric?(value, array)
    Input.string?(value, array)
  end
  #TODO: try again method if both words and numbers were entered into the array
  #TODO: method to calculate numeric statistics
  #TODO: method to calculate string statistics
end

#
#
#   loop do
#     puts "Enter a number OR a 'string' value: "
#     user_input = gets.chomp
#
#     if (user_input.to_i.to_s == user_input) || (user_input.to_f.to_s == user_input)
#       elements.include?(user_input.is_a? Float)
#       elements << user_input.to_f
#
#     elsif elements.include?(user_input.is_a? String)
#       elements << user_input
#
#     else
#       if elements.include?(user_input.is_a? String) && elements.include?(user_input.is_a? Float)
#         try_again()
#       end
#       if user_input == ""
#         if !elements.include? String
#
#           exit
#         else
#
#           exit
#         end
#       end
#     end
#   end
# end
#
main if __FILE__ == $PROGRAM_NAME
