user_input_stat = []
num = nil

while true
    puts "enter a number: "
    num = gets.chomp
  if (num.to_i.to_s == num)|| (num.to_f.to_s == num)
    user_input_stat << num
  elsif num == ""
    break
  else #(num.to_i.to_s != num)|| (num.to_f.to_s != num)
    print "invalid input "
  end
end

#p user_input_stat (to print array for check)

puts "Count: #{user_input_stat.count}"
    sum = 0
    user_input_stat.each {|n| sum += n.to_f } #sum
puts "Sum: #{sum}"
    average = sum / user_input_stat.count #average
puts "Average: #{average}"
