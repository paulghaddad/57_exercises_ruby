def obtain_first_number
  print "What is the first number? "
  gets.chomp.to_i
end

def obtain_second_number
  print "What is the second number? "
  gets.chomp.to_i
end


def print_calculations(first_number, second_number)
  puts "#{first_number} + #{second_number} = #{first_number + second_number}"
  puts "#{first_number} - #{second_number} = #{first_number - second_number}"
  puts "#{first_number} * #{second_number} = #{first_number * second_number}"
  puts "#{first_number} / #{second_number} = #{first_number / second_number}"
end

def main
  first_number = obtain_first_number
  second_number = obtain_second_number

  print_calculations(first_number, second_number)
end

main
