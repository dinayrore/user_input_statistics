require 'pry'

def enter_value
  puts 'Enter a number OR word: '
  value = gets.chomp
end
#
#

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
  sum = calculate_sum(input)
  average = sum / input.count
  input = print_statistics(input, sum, average)
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
#           puts elements.join
#           puts elements.count
#           puts elements.length.min
#           puts elements.length.max
#           puts elements.length / elements.count
#         #TODO: The number of times the letter e was used in the inputs.
#           exit
#         else
#           puts "Count: #{elements.count}"
#           puts "Sum: #{get_sum(elements)}"
#           puts "Average/Mean: #{get_average(elements)}"
#           puts "Median: #{get_median(elements)}"
#           puts "Mode: #{get_mode(elements)}"
#           puts "Standard Deviation: #{get_standard_diviation(elements)}"
#           exit
#         end
#       end
#     end
#   end
# end
#
# if __FILE__ == $PROGRAM_NAME
# main
# end
