#
class UserInputStatistics
  def initialize(value)
    @value = value
  end


  def numeric?(value)
    if value.to_i.to_s == value || value.to_f.to_s == value
      true
      #TODO: method to push values into array
    else
      false
      #TODO: method to inform user of invalid input
    end
  end

# def store_value
# end
#
# def input_invalid
# end
#
# def count()
# end

# user_input_stat = []
# num = nil
#
# while true
#     puts "enter a number: "
#     num = gets.chomp
#   if (num.to_i.to_s == num)|| (num.to_f.to_s == num)
#     user_input_stat << num
#   elsif num == ""
#     break
#   else #(num.to_i.to_s != num)|| (num.to_f.to_s != num)
#     print "invalid input "
#   end
# end
#
# #p user_input_stat (to print array for check)
#
# puts "Count: #{user_input_stat.count}"
#     sum = 0
#     user_input_stat.each {|n| sum += n.to_f } #sum
# puts "Sum: #{sum}"
#     average = sum / user_input_stat.count #average
# puts "Average: #{average}"

def main
  until value == ''
    puts 'Enter a number: '
    value = gets.chomp
    UserInputStatistics.new(value)
  end
  value = user_input
  numeric?(value)
end

main if __FILE__ == $PROGRAM_NAME
