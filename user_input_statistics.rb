def user_input
  puts 'Enter a number: '
  value = gets.chomp
end

def numeric?(value, input)
  if value.to_i.to_s == value || value.to_f.to_s == value
    input << value
  else
    puts 'Invalid input '
  end
end

# def store_value
# end
#

#
# def count()
# end


#
#   if (num.to_i.to_s == num)|| (num.to_f.to_s == num)
#     user_input_stat << num
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
  input = []
  value = nil
  until value == ''
    value = user_input
    numeric?(value, input)
  end
end

main if __FILE__ == $PROGRAM_NAME
