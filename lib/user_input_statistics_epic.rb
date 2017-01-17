require 'pry'

def numeric?(value, numbers)
  numbers << value if value.to_i.to_s == value || value.to_f.to_s == value
end

def string?(value, words)
  
end

# class String
#   def is_string?
#     self == self
#     return true
#   end
#
#   def is_float?
#     self.to_f.to_s == self
#     return true
#   end
#
#   def is_integer?
#     self.to_i.to_s == self
#     return true
#   end
#
#   def is_numeric?
#     is_float? || is_integer?
#     return true
#   end
# end
#
# class Float
#   def sqrt
#     Math.sqrt(self)
#   end
# end
#
# def is_even?
#   return true
# end
#
# def get_sum(numbers)
#   total = 0
#   numbers.each do |number|
#     total += number
#   end
#   total
# end
#
# def get_average(numbers)
#   get_sum(numbers) / numbers.count
# end
#
# def get_mode(numbers)
#   hash = Hash.new(0)
#   numbers.each do |frequent|
#     hash[frequent] += 1
#   end
#   return hash
# end
#
# def get_median(numbers)
#   sorted = numbers.sort
#   middle = numbers.length
#   if middle % 2 != 0
#     (middle + 1) / 2.0
#   else
#     (((middle.length/2.0) + ((middle.length + 1)/2.0)) / 2.0)
#   end
#   return middle
# end
#
# def get_standard_diviation(numbers)
#   variance = numbers.sort
#   standard_diviation = Math.sqrt(variance.max - variance.min)
#   return standard_diviation
# end
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
# def main()
#   elements = []
#   puts "Enter a number OR a 'string' value: "
#   user_input = gets.chomp
#     if (user_input.to_i.to_s == user_input) || (user_input.to_f.to_s == user_input)
#       elements << user_input.to_f
#     else
#       elements << user_input
#     end
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
#         # The number of times the letter e was used in the inputs.
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
